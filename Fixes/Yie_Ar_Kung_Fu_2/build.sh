#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Yie Ar Kung Fu SSD file> <stripped UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.LOADER,$.YIE,$.YLOAD,$.YIE2,$.YIE3,$.YIE4
