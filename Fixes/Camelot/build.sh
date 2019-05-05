#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Camelot UEF file> <patched UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5 temp
python -c 't = open("temp/QLOAD").read(); t = t.replace("FX178,255,255", "*************"); open("temp/QLOAD", "w").write(t)'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/CAMELOT,temp/QLOAD,temp/SCREEN,temp/QUEST21,temp/QUEST22,temp/QUEST23
rm -r temp
