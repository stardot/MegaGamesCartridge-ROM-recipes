#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Confuzion UEF file> <stripped UEF file>"
    exit 1
fi

cp "$1" "$2"
UEFtrans.py "$1" extract 1 temp

python patch_checks.py

# Replace the original CONFUZION file with the patched version.
UEFtrans.py "$2" remove 1
UEFtrans.py "$2" insert 1 temp/CONFUZION
rm -r temp
