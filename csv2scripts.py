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

for line in lines:

    pieces = line.strip().split(",")
    if len(pieces) != len(check_headings):
        continue
    
    d = {}
    for key, value in zip(check_headings, pieces):
        d[key] = value
    
    if d["Status"] != "OK":
        continue
    
    if d["ROM2"]:
        bf.write("./UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s ROMs/%(ROM2)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s -rom1 ROMs/%(ROM2)s\n" % d)
    else:
        bf.write("./UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s\n" % d)

bf.close()
tf.close()
