#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Crypt Capers SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.CRYPT1,$.CRYPT2,$.CRYPT3
