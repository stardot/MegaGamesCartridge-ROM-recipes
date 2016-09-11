#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]]; then
    echo "Usage: `basename $0` <SpyVsSpy UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5 temp
./loader.py
#distance_pair.py --compress temp/SCREEN temp/SCRDATA
cp SCRDATA temp/
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/SCREEN
python -c 'open("temp/SCREEN.inf", "w").write("$.SCREEN\t1900\t1900\t%x" % len(open("temp/SCREEN").read()))'
UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/LOADER,temp/SCREEN,temp/SPY1,temp/SPYvsS,temp/SPY2
rm -r temp
