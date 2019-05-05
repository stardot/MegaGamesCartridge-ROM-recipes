#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Joey UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4 temp
./loader.py
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/JOEY.E,temp/JLOAD,temp/JOE2,temp/JOE3,temp/JOEY
rm -r temp
