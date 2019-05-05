#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Bug Eyes 2 SSD file> <stripped UEF file>"
    exit 1
fi

mkdir temp
SSD2UEF.py "$1" be.uef $.LOADER,$.BUGLOAD,$.BUGEYES,$.SCREEN
UEFtrans.py be.uef extract 0,1,2,3 temp

# Fix the loaders to disable VDU and re-enable it after loading.
python -c 't = open("temp/LOADER", "rb").read(); t = t[:0x13f] + "\x11\xef21:*/BUGLOAD\x0d\xff"; open("temp/LOADER", "wb").write(t)'
sed -i s/14b/14f/g temp/LOADER.inf
python -c 't = open("temp/BUGLOAD", "rb").read(); t = t.replace("\x4c\x0a\x1e", "\x4c\xb8\x04") + "\xa9\x06\x20\xee\xff\x4c\x0a\x1e"; open("temp/BUGLOAD", "wb").write(t)'
sed -i s/b8/c0/g temp/BUGLOAD.inf

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/BUGLOAD,temp/BUGEYES,temp/SCREEN
rm -r temp
rm be.uef
