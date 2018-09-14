#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Boulder Dash ADF file> <patched UEF file>"
    exit 1
fi

ADF2INF.py $1 temp
UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/Boulder,temp/Screen,temp/DASH
rm -r temp
