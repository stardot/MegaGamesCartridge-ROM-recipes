#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Perplexity UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7 temp
./loader.py
distance_pair.py --compress temp/LOADSCR temp/SCRDATA
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/SCR
python3 -c 'open("temp/SCR.inf", "w").write("$.LOADSCR\t4600\t4600\t%x" % len(open("temp/SCR").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/PERPLEXITY,temp/START,temp/SCR,temp/LOADER,temp/PERP1,temp/PERP2,temp/PERP3,temp/PERP4
rm -r temp
