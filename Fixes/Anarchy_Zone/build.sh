#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Anarchy Zone UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5 temp

# Fix the loader to remove attempts to disable keyboard scanning.
python -c 't = open("temp/ZONE", "rb").read(); t = t.replace("FX178", "*****"); open("temp/ZONE", "wb").write(t)'

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/ZONE,temp/ZONE#1,temp/ZONE#2,temp/ZONE#3,temp/ZONE#4,temp/ZONE#5
rm -r temp
