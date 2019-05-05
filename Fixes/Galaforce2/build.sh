#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Play It Again Sam 6 DSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py -s A. "$1" "$2" A.LOADER,A.SUP-ACO,A.GALAF2,A.GALA2T,A.G2LOAD,A.GAME,A.GAME2
