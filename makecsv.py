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

headings = ["Name", "Publisher", "UEF", "ROM1", "ROM2", "Options"]

print ",".join(headings)

for line in open("batch.sh").readlines():

    if not line.startswith("./UEF2ROM.py"):
        continue
    
    pieces = line.strip().split()
    
    options = []
    i = 1
    while True:
        option = pieces[i]
        if option[:1] in "~/":
            break
        else:
            options.append(option)
        i += 1
    
    uef_file = pieces[i]
    rom_files = pieces[i + 1:]
    if len(rom_files) < 2:
        rom_files.append("")
    
    uef_file_name = uef_file.split("/")[-1]
    name = uef_file_name.split("_")[0]
    
    print ",".join([name, "", uef_file_name] + rom_files + [" ".join(options)])
