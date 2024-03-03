#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Space Ranger UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4 temp
python3 loader.py
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/RANGER,temp/RANGER1,temp/RSCREEN,temp/SPRITS,temp/RANGER2
rm -r temp
