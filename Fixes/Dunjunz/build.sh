#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Dunjunz UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28 temp

# Fix the level loading addresses so that we don't have to specify them all.
sed -i s/6b/3b/g temp/Level*.inf

# Unscramble all the levels to make them easier to compress and patch the
# loader to skip the level data check.
python unscramble.py

UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/DUNK,temp/LOADER,temp/TITLE,temp/Dunjunz,temp/Level1,temp/Level2,temp/Level3,temp/Level4,temp/Level5,temp/Level6,temp/Level7,temp/Level8,temp/Level9,temp/Level10,temp/Level11,temp/Level12,temp/Level13,temp/Level14,temp/Level15,temp/Level16,temp/Level17,temp/Level18,temp/Level19,temp/Level20,temp/Level21,temp/Level22,temp/Level23,temp/Level24,temp/Level25
rm -r temp
