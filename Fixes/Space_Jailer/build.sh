#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Space Jailer UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2 temp

# Fix the loader so that the game loads in MODE 6.
python -c 't = open("temp/SJ", "rb").read(); t = t[:0xbe] + "6" + t[0xbf:0xfa] + "5" + t[0xfb:]; t = t.replace("X%!&7C00=X%!\xb8\x50", "::::::::::::::"); open("temp/SJ", "wb").write(t)'
# Fix the instructions.
python fix_instructions.py
# Fix the key controls in the main game.
python -c 't = open("temp/SJ2", "rb").read(); t = t[:0x2eb] + "\x9e" + t[0x2ec:0x306] + "\xbd" + t[0x307:]; open("temp/SJ2", "wb").write(t)'

UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/SJ,temp/SJ1,temp/SJ2
rm -r temp
