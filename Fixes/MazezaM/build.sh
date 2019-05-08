#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <MazezaM SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.MENU,$.LOADER,$.MazezaM,$.LOADER2,$.MzM2
