#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]; then
    echo "Usage: `basename $0` <Hyper Viper SSD file> <UEF file>"
    exit 1
fi

SSD2UEF.py $1 $2 $.LOADER,$.VIPER,$.LICENCE
