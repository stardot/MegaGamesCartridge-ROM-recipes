#!/usr/bin/env python

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

import os, sys

check_headings = ["Status", "Name", "Publisher", "UEF", "ROMs", "Options", "URL", "Files"]

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
    
    elif d["URL"] == "-":
        print "Skipping", d["Name"]
        continue
    
    games += 1
    
    ROMs = d["ROMs"].split()
    for i, ROM in enumerate(ROMs):
        d["ROM%i" % (i + 1)] = ROM
    
    if len(ROMs) == 1:
        bf.write("UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s\n" % d)
    elif len(ROMs) == 2:
        bf.write("UEF2ROM.py %(Options)s UEFs/%(UEF)s ROMs/%(ROM1)s ROMs/%(ROM2)s\n" % d)
        tf.write("elkulator -rom2 ROMs/%(ROM1)s -rom1 ROMs/%(ROM2)s\n" % d)
    else:
        d["ROMs"] = " ".join(map(lambda ROM: "ROMs/" + ROM, ROMs))
        d["combined"] = "ROMs/" + os.path.split(d["UEF"])[1].replace(".uef", ".rom")
        bf.write("UEF2ROM.py %(Options)s UEFs/%(UEF)s %(ROMs)s\n" % d)
        bf.write("cat %(ROMs)s > %(combined)s\n" % d)
        tf.write("elkulator -rom2 %(combined)s\n" % d)
    
    roms += len(ROMs)

bf.close()
tf.close()

print "%i titles" % games
print "%i ROMs" % roms
