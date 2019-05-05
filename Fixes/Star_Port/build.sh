#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Star Port DSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py -s C. "$1" "$2" C.ESTRPT,C.ESTRPT0,C.ESTRPT1
