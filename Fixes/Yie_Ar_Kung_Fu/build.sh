#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Yie Ar Kung Fu UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7 temp
python -c 'import os; os.rename("temp/YIE3\x7f\x7f\x7f", "temp/YIE3a"); os.rename("temp/YIE3\x7f\x7f\x7f.inf", "temp/YIE3a.inf")'

distance_pair.py --compress temp/YIE\-AR temp/DATA
ophis -o temp/loader loader.oph
cat temp/loader temp/DATA > temp/LOADER
python -c 'open("temp/LOADER.inf", "w").write("$.YIE-AR\t2800\t2800\t%x" % len(open("temp/LOADER").read()))'

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/YIE0,temp/YIE1,temp/YIE2,temp/YIE3,temp/YIE3a,temp/YIE4
rm -r temp
