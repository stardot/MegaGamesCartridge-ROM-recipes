#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <BoneCruncher UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5,6,7 temp
./loader.py
UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append 'temp/LOADER,temp/Bone_2,temp/SCREEN 1,temp/SCREEN 2,temp/SCREEN 3,temp/SCREEN 4'
rm -r temp
