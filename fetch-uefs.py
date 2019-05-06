#!/usr/bin/env python

import os, StringIO, sys, time, urllib2, zipfile

check_headings = ["Status", "Name", "Publisher", "UEF", "ROMs", "Options", "URL", "Files"]

lines = open("roms.csv").readlines()

headings = lines.pop(0).strip().split(",")
if headings != check_headings:
    sys.stderr.write("Headings in the roms.csv file were not as expected.\n")
    sys.exit(1)

uef_dir = "UEFs"

if not os.path.isdir(uef_dir):
    os.mkdir(uef_dir)

new_lines = []
new_lines.append(",".join(check_headings))

for line in lines:

    pieces = line.strip().split(",")
    if len(pieces) != len(check_headings):
        print "Invalid entry:", pieces
        continue
    
    d = {}
    for key, value in zip(check_headings, pieces):
        d[key] = value
    
    if not d["Status"].startswith("OK"):
        print "Skipping", d["Name"], "-", d["Status"]
        continue
    
    file_names = d["Files"].split()
    original_url = url = d["URL"].strip()
    
    found = True
    for file_name in file_names:
        file_name = os.path.split(file_name)[1]
        if not os.path.exists(os.path.join(uef_dir, file_name)):
            found = False
            break
    
    if not found and url != "-":
    
        print "Downloading", url
        
        try:
            data = StringIO.StringIO(urllib2.urlopen(url).read())
            d["URL"] = url
            
            try:
                zf = zipfile.ZipFile(data)
                for file_name in file_names:
                    data = zf.read(file_name)
                    open(os.path.join(uef_dir, os.path.split(file_name)[1]),
                         "wb").write(data)
            
            except KeyError:
                sys.stderr.write("Failed to find %s in the archive.\n" % file_name)
                sys.stderr.write("Found: %s\n" % " ".join(zf.namelist()))
                
                # Don't try to download this UEF next time.
                if not original_url:
                    d["URL"] = "-"
        
        except urllib2.HTTPError:
            sys.stderr.write("Failed to download %s\n" % file_name)
            
            # Don't try to download this UEF next time.
            if not original_url:
                d["URL"] = "-"
        
        time.sleep(1)
    
    new_line = []
    for heading in check_headings:
        new_line.append(d[heading])
    
    new_lines.append(",".join(new_line))

open("roms.csv", "w").write("\n".join(new_lines) + "\n")
