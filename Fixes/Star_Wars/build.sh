#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Star Wars UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4 temp
./loader.py
distance_pair.py --compress temp/STARscr temp/SCRDATA
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/STARscrc
python -c 'open("temp/STARscrc.inf", "w").write("$.STARscr\t1980\t1980\t%x" % len(open("temp/STARscrc").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/STARW,temp/STARscrc,temp/STARW2,temp/SWcode,temp/SWsetup
rm -r temp
