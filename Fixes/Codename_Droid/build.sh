#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Codename: Droid UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5 temp
distance_pair.py --compress temp/RUN3 temp/RUN3DATA
ophis -o temp/loader loader.oph
cat temp/loader temp/RUN3DATA > temp/LOADER
python3 -c 'open("temp/LOADER.inf", "w").write("$.LOADER\t3100\t3100\t%x" % len(open("temp/LOADER").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/LOADER,temp/DROID
rm -r temp
