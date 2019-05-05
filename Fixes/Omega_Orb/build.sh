#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Omega Orb SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py "$1" "$2" $.OMEGAOR,$.LOADER,$.SCREEN,$.OMEGA2,$.OMEGA-1,$.OMEGA-2,$.OMEGA-3,$.OMEGA-4,$.OMEGA-5,$.OMEGA-6
