#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Ravenskull PIAS UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7 temp
#./raven.py
#distance_pair.py --compress temp/SCREEN temp/SCRDATA
#ophis -o temp/screen screen.oph
#ophis -o temp/LOADER loader.oph
#cat temp/screen temp/SCRDATA > temp/SCREEN
python -c 'open("temp/SCREEN.inf", "w").write("$.SCREEN\t2700\t2717\t2900")'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/CONTROL,temp/SCREEN,temp/DATA,temp/DAT1,temp/DAT2,temp/MAIN
rm -r temp
