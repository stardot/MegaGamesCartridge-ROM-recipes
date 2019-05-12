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

import commands, os, shutil, subprocess, sys

def fix_uef(fix_dir, file_names, uef):

    this_dir = os.path.abspath(os.curdir)
    os.chdir(fix_dir)
    
    build_sh = os.path.abspath("build.sh")
    
    s = subprocess.Popen([build_sh] + file_names + [uef])
    os.chdir(this_dir)
    return s.wait()


def roms_to_uef(file_names, uef):

    s = subprocess.Popen(["ROM2UEF.py"] + file_names + [uef])
    return s.wait()


check_headings = ["Status", "Name", "Publisher", "UEF", "ROMs", "Options", "URL", "Files"]

lines = open("roms.csv").readlines()

headings = lines.pop(0).strip().split(",")
if headings != check_headings:
    sys.stderr.write("Headings in the roms.csv file were not as expected.\n")
    sys.exit(1)

uef_dir = os.path.abspath("UEFs")
rom_dir = os.path.abspath("ROMs")
fixes_dir = os.path.abspath("Fixes")
fixes = os.listdir(fixes_dir)

if not os.path.isdir(uef_dir):
    sys.stderr.write("No UEF directory found.\n")
    sys.exit(1)

if not os.path.isdir(rom_dir):
    os.mkdir(rom_dir)

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
    
    file_names = map(lambda s: os.path.split(s.strip())[1], d["Files"].split())
    
    if os.path.exists(os.path.join(uef_dir, d["UEF"])):
        continue
    
    if file_names[0].endswith(".rom"):
    
        if d["UEF"].endswith(".rom"):
            for name in file_names:
                rom_file = os.path.join(rom_dir, name)
                if not os.path.exists(rom_file):
                    print "Copying", ",".join(file_names), "to", rom_dir
                    shutil.copy2(os.path.join(uef_dir, name), rom_file)
        else:
            if roms_to_uef(map(lambda name: os.path.join(uef_dir, name), file_names),
                           os.path.join(uef_dir, d["UEF"])) == 0:
                print "Created", d["UEF"], "from", ",".join(file_names)
    
    elif file_names[0] != d["UEF"]:
    
        print "Finding fix for", d["Name"], "...",
        
        # Find the directory in the Fixes directory for this game.
        name = d["Name"]
        for c in "()!":
            name = name.replace(c, "")
        
        file_names = map(lambda name: os.path.join(uef_dir, name), file_names)
        
        for sep in "_", " ", "":
            fix_dir = name.replace(" ", sep)
            if fix_dir in fixes:
                if fix_uef(os.path.join(fixes_dir, fix_dir),
                           file_names, os.path.join(uef_dir, d["UEF"])) == 0:
                    print "OK"
                else:
                    print "found but failed"
                break
        else:
            print "failed"
