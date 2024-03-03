#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Adventure Quest UEF file> <patched UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0 temp

python3 patch_file.py

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/QUEST
rm -r temp
