#!/usr/bin/env python

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
