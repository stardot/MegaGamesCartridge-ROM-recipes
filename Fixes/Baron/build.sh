#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Baron UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7,8 temp
python3 loader.py
#distance_pair.py --compress temp/BARSCR temp/SCRDATA
cp SCRDATA temp/
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/SCREEN
python3 -c 'open("temp/SCREEN.inf", "w").write("$.BARSCR\t4200\t4200\t%x" % len(open("temp/SCREEN").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/BARON,temp/BARON3,temp/SCREEN,temp/MAIN002,temp/MAIN,temp/MAIN000,temp/MAIN001,temp/MAIN003,temp/SCREEN2
rm -r temp
