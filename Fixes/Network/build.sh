#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Network UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7,8 temp
./loader.py
distance_pair.py --compress temp/SCREEN temp/SCRDATA
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/SCR
python3 -c 'open("temp/SCR.inf", "w").write("$.SCREEN\t4700\t4700\t%x" % len(open("temp/SCR").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/NETLOAD,temp/NETWOR0,temp/SCR,temp/A-CODE,temp/B-CODE,temp/C-CODE,temp/D-CODE,temp/NETWOR1
rm -r temp
