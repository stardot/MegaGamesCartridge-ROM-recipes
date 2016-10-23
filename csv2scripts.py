#!/usr/bin/env python

import sys

check_headings = ["Status", "Name", "Publisher", "UEF", "ROM1", "ROM2", "Options"]

lines = open("roms.csv").readlines()

headings = lines.pop(0).strip().split(",")
if headings != check_headings:
    sys.stderr.write("Headings in the roms.csv file were not as expected.\n")
    sys.exit(1)

bf = open("batch.sh", "w")
bf.write("#!/bin/sh\n\nset -e\n\n")
tf = open("testroms.sh", "w")
tf.write("#!/bin/sh\n\nset -e\n\n")

games = 0
roms = 0

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
    
    games += 1
    
    if d["ROM2"]:
        bf.write("./UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s ROMs/%(ROM2)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s -rom1 ROMs/%(ROM2)s\n" % d)
        roms += 2
    else:
        bf.write("./UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s\n" % d)
        roms += 1

bf.close()
tf.close()

print "%i games" % games
print "%i ROMs" % roms
