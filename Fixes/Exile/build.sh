#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Exile SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py -s C. "$1" "$2" $.EXILE,$.EXILE1,$.EXILE2,$.EXILE3,$.EXILEL,$.ExileMC,$.QSAVE
