#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Ransack SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.RANSAK\!,$.RANSACK,$.RANSAK,$.RLOAD,$.RANSAK0,$.RANSAK2,$.RANSAK1,$.RANSAK5,$.RANSAK3,$.RANSAK4
