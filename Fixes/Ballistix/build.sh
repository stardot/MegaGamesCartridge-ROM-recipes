#!/bin/sh

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: `basename "$0"` <Ballistix UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py "$1" extract 0,1,2,3,4,5,6 temp
./balls.py
distance_pair.py --compress temp/STIX temp/STIXDATA
distance_pair.py --compress temp/BALLS1 temp/BALLS1DATA
ophis -o temp/screen screen.oph
ophis -o temp/balls1 balls1.oph
cat temp/screen temp/STIXDATA > temp/stix
cat temp/balls1 temp/BALLS1DATA > temp/BALLS1
python3 -c 'open("temp/BALLS.inf", "w").write("$.BALLS\t1900\t8023\t%x" % len(open("temp/BALLS").read()))'
python3 -c 'open("temp/stix.inf", "w").write("$.STIX\t2300\t2300\t%x" % len(open("temp/stix").read()))'
# Put the code above HIMEM (0x2700) in the BALLS loader.
python3 -c 'open("temp/BALLS1.inf", "w").write("$.BALLS1\t2700\t2700\t%x" % len(open("temp/BALLS1").read()))'
UEFtrans.py "$2" new Electron 0
UEFtrans.py "$2" append temp/BALLISTIX,temp/BALLS,temp/stix,temp/BALLS1,temp/BALLS2,temp/BALLS3,temp/BALLS4
rm -r temp
