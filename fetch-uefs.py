#!/usr/bin/env python3

"""
Copyright (C) 2019 David Boddie <david@boddie.org.uk>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import os, sys, time, zipfile
import urllib.error, urllib.request
from io import BytesIO

args = sys.argv[1:]
update = "--update" in args
if update:
    args.remove("--update")

process_names = []

if len(sys.argv) > 1:
    process_names += args

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
        print("Invalid entry:", pieces)
        continue
    
    d = {}
    for key, value in zip(check_headings, pieces):
        d[key] = value
    
    if not d["Status"].startswith("OK"):
        print("Skipping", d["Name"], "-", d["Status"])
        continue
    
    elif process_names and d["Name"] not in process_names:
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
    
        print("Downloading", url)
        
        try:
            resp = urllib.request.urlopen(url)

        except urllib.error.HTTPError:
            sys.stderr.write("Failed to download %s\n" % file_name)
            
            # Don't try to download this UEF next time.
            if not original_url:
                d["URL"] = "-"
        
        data = BytesIO(resp.read())
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
        
        time.sleep(1)
    
    new_line = []
    for heading in check_headings:
        new_line.append(d[heading])
    
    new_lines.append(",".join(new_line))

if update:
    open("roms.csv", "w").write("\n".join(new_lines) + "\n")
