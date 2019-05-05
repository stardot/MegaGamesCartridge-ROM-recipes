#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Warehouse UEF file> <UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5 temp

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/WAREHOUSE,temp/PICTURE,temp/LOADER,temp/GAME1,temp/GAME2,temp/BORDER
rm -r temp
