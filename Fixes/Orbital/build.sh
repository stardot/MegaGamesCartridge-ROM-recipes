#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Orbital SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py -s C. "$1" "$2" $.ORBITAL,$.ORBIT2,$.ORBIT3
