#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Eddie Kidd Jump Challenge SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.EDDIE,$.KIDD,$.S
