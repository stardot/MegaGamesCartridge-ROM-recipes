#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Palace Of Magic 2016 SSD file> <patched UEF file>"
    exit 1
fi

SSD2UEF.py $1 temp.uef $.!BOOT,$.Loader,$.Pom2016,$.PlcOMgc
UEFtrans.py temp.uef extract 0,1,2,3 temp

python patch_loader.py

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/\!BOOT,temp/Loader,temp/Pom2016,temp/PlcOMgc
rm -r temp
rm temp.uef
