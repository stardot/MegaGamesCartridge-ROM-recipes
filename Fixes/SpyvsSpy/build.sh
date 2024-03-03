#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <SpyVsSpy UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4 temp
./loader.py
python3 -c 'open("temp/SCREEN.inf", "w").write("$.SCREEN\t5800\t5800\t2800")'
./split.py "$1" "$2"

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/SCREEN,temp/SPY1,temp/SPYvsS,temp/SPY2
rm -r temp
