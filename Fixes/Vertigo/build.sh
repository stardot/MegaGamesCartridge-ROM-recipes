#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Play It Again Sam 16 SSD file> <patched UEF file>"
    exit 1
fi

SSD2UEF.py $1 temp.uef D.LOADER,D.VERTPAN,D.VERTLEV
UEFtrans.py temp.uef extract 0,1,2 temp

# Remove any root directory prefixes in case UEFtrans left any behind.
sed -i s/$.// temp/*.inf
# Replace the D directory with the root directory.
sed -i s/D./$./ temp/*.inf

# Patch the loader.
python -c 't = open("temp/D.LOADER", "rb").read(); t = t[:4] + "\xe5\x8d\x74\x74\x40:\xf4" + t[11:]; t = t.replace("0,3,15,0", "0,8,00,8"); open("temp/D.LOADER", "wb").write(t)'

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/D.LOADER,temp/D.VERTPAN,temp/D.VERTLEV
rm -r temp
rm temp.uef
