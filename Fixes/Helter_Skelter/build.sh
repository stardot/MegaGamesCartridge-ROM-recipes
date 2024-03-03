#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Helter Skelter UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5 temp

# Fix the loader to remove the call to disable keyboard scanning.
python3 -c 't = open("temp/LOADER", "rb").read(); t = t.replace(b"FX178,0", b"*******"); open("temp/LOADER", "wb").write(t)'

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/START,temp/HELTA,temp/GOFORIT,temp/SCRFLB,temp/SCRFLA
rm -r temp
