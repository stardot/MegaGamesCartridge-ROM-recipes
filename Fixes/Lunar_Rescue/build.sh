#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Lunar Rescue UEF file> <patched UEF file>"
    exit 1
fi

cp "$1" "$2"
UEFtrans.py "$1" extract 0,1,2,3 temp

# Patch out the JMP (&FFFC) reset call EORed with 0x0e in the final file.
# 0x04 is 0xea ^ 0x0e where 0xea is the opcode for NOP.
python -c 't = open("temp/Lunar3\xc3").read(); t = t[:0x261e] + "\x04\x04\x04" + t[0x2621:]; open("temp/Lunar3\xc3", "w").write(t)'

UEFtrans.py "$2" remove 3
python -c 'import commands, os; os.system("UEFtrans.py '"$2"' insert 3 temp/Lunar3\xc3")'
rm -r temp
