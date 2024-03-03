#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Sim City UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6,7,8,9,10,11 temp
./loader.py
distance_pair.py --compress temp/SIMSCR1 temp/SCRDATA
distance_pair.py --compress temp/SIM2 temp/SIM2D
ophis -o temp/screen screen.oph
ophis -o temp/sim2 sim2.oph
cat temp/screen temp/SCRDATA > temp/SIMSCRc
cat temp/sim2 temp/SIM2D > temp/SIM2c
python3 -c 'open("temp/SIMSCRc.inf", "w").write("$.SIMSCR1\t4100\t4100\t%x" % len(open("temp/SIMSCRc").read()))'
# Place the compressed file above HIMEM of 0x4000 as set in SIM_CITY.
python3 -c 'open("temp/SIM2c.inf", "w").write("$.SIM2\t4000\t4000\t%x" % len(open("temp/SIM2c").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/SIM_CITY,temp/SIMSCRc,temp/SIM1,temp/SIMCIT2,temp/SIM2c,temp/SIM3,temp/SIM4
rm -r temp
