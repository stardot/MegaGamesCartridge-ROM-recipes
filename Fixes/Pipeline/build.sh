#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]]; then
    echo "Usage: `basename $0` <Pipeline UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3 temp
ophis -o temp/LOADER loader.oph
python -c 'open("temp/LOADER.inf", "w").write("$.LOADER\t1900\t1900\t%x" % len(open("temp/LOADER").read()))'
python -c 't = open("temp/GAME").read(); t = t[:0x451b] + "\xea\xea\xea" + t[0x451e:]; open("temp/GAME", "w").write(t)'
UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/LOADER,temp/GAME,temp/IO
rm -r temp
