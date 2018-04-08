#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <zaor.uef file> <UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3 temp
#SSD2UEF.py $1 $2 $.ZAOR,$.ZAOR1

# Fix the loader and screen.
python fix_loader.py temp/LOADER temp/ZAORCV temp/INST

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/LOADER,temp/ZAORCV,temp/INST,temp/BIBM

rm -r temp
