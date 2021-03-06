#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Lunar Rescue UEF file> <patched UEF file>"
    exit 1
fi

cp "$1" "$2"
UEFtrans.py "$1" extract 0,1,2,3 temp
UEFtrans.py "$2" remove 3
python patch_file.py "$2"

rm -r temp
