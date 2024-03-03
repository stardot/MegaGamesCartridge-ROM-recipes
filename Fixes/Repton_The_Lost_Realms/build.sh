#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Usage: `basename "$0"` <Repton The Lost Realms side 1 UEF file> <Repton The Lost Realms side 2 UEF file> <stripped and merged UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 1,2,3,4,5,6 temp
UEFtrans.py "$2" extract 0,1,2,3 temp

python3 -c 't = open("temp/REPTON", "rb").read(); t = t.replace(b"REPTON3\r", b"LARGO\r\r\r"); open("temp/REPTON", "wb").write(t)'

UEFtrans.py "$3" new Electron 0
UEFtrans.py "$3" append temp/MENU,temp/FONTS,temp/RTLRSCR,temp/REPTON,temp/REPTON1,temp/REPTON2,temp/LARGO,temp/ADAGIO,temp/ALLEGRO,temp/PRESTO
rm -r temp
