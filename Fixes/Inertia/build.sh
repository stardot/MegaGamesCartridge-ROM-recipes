#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Inertia UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3 temp
./loader.py
distance_pair.py --compress temp/1 temp/SCRDATA
distance_pair.py --compress temp/2 temp/2DATA
ophis -o temp/screen screen.oph
ophis -o temp/2e 2loader.oph
cat temp/screen temp/SCRDATA > temp/SCREEN
cat temp/2e temp/2DATA > temp/2c
python3 -c 'open("temp/SCREEN.inf", "w").write("$.1\t3000\t3000\t%x" % len(open("temp/SCREEN").read()))'
python3 -c 'open("temp/2c.inf", "w").write("$.2\t1100\t1100\t%x" % len(open("temp/2c").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/Inertia,temp/SCREEN,temp/2c,temp/3
rm -r temp
