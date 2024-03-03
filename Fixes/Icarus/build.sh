#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Icarus UEF file> <stripped UEF file>"
    exit 1
fi

cp "$1" "$2"
UEFtrans.py "$1" extract 3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24 temp

# Unscramble all the levels to make them easier to compress and patch the
# loader to skip the level data check.
python3 unscramble.py

# Replace the original Vars file with the patched version.
UEFtrans.py "$2" remove 3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
UEFtrans.py "$2" insert 3 temp/Vars
UEFtrans.py "$2" append temp/DECKA,temp/DECKB,temp/DECKC,temp/DECKD,temp/DECKE,temp/DECKF,temp/DECKG,temp/DECKH,temp/DECKI,temp/DECKJ,temp/DECKK,temp/DECKL,temp/DECKM,temp/DECKN,temp/DECKO,temp/DECKP,temp/DECKQ,temp/DECKR,temp/DECKS,temp/DECKT
rm -r temp
