#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]]; then
    echo "Usage: `basename $0` <Yie Ar Kung Fu UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5,6 temp
python -c 'import os; os.rename("temp/GAME\x82\x7f", "temp/GAME"); open("temp/GAME.inf", "w").write("$.GAME\t3000\t3000\t100")'

ophis -o temp/LOADER loader.oph
python -c 'open("temp/LOADER.inf", "w").write("$.LOADER\te00\te00\t%x" % len(open("temp/LOADER").read()))'

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/LOADER,temp/GAME,temp/YIE2,temp/YIE3,temp/YIE4
rm -r temp
