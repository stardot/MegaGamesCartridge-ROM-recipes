#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Last Ninja UEF file from SSD> <patched UEF file>"
    exit 1
fi

#./UEF2ROM.py -f 1-6 -s -P f8 1:2 -w d3f UEFs/LastNinja_E.uef r1 r2
#./UEF2ROM.py -f 7-14 -m -s -P f8 3:4 UEFs/LastNinja_E.uef r3 r4
#./UEF2ROM.py -f 15-17 -m -s -P f8 0 UEFs/LastNinja_E.uef r5

SSD2UEF.py "$1" "$2" $.LOADER,$.LOADSCR,$.NINJA-1,$.NINJA-2,$.NINJA-3,1.LEVEL-A,1.LEVEL-B,2.LEVEL-A,2.LEVEL-B,3.LEVEL-A,3.LEVEL-B,4.LEVEL-A,4.LEVEL-B,5.LEVEL-A,5.LEVEL-B,6.LEVEL-A,6.LEVEL-B

UEFtrans.py "$2" extract 0 temp
python patch.py temp/LOADER

UEFtrans.py "$2" remove 0
UEFtrans.py "$2" insert 0 temp/LOADER

rm -r temp
