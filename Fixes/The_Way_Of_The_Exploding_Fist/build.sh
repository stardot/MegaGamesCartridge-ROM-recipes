#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <The Way Of The Exploding Fist SSD file> <fixed UEF file>"
    exit 1
fi

SSD2UEF.py "$1" ef.uef 2.FLOAD,2.FIST1,2.FIST2,2.FIST3,2.FIST4
UEFtrans.py ef.uef extract 0,1,2,3,4 temp

# Fix the file names to remove the "2." prefix that they acquired from DFS.
sed -i s/2\\.//g temp/*.inf

# Patch the loader to disable VDU calls and re-enable them after loading.
python patch_loader.py

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/2.FLOAD,temp/2.FIST1,temp/2.FIST2,temp/2.FIST3,temp/2.FIST4
rm -r temp
rm ef.uef
