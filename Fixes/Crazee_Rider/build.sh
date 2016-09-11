#!/bin/sh

set -e

if [ -z $1 ] || [ -z $2 ]]; then
    echo "Usage: `basename $0` <Crazee Rider UEF file> <stripped UEF file>"
    exit 1
fi

UEFtrans.py $1 extract 0,1,2,3,4,5,6 temp
#distance_pair.py --compress temp/CrazeeScr temp/SCRDATA
cp SCRDATA temp/
ophis -o temp/screen screen.oph
cat temp/screen temp/SCRDATA > temp/SCREEN
python -c 'open("temp/SCREEN.inf", "w").write("$.CrazeeScr\t48f0\t48f0\t%x" % len(open("temp/SCREEN").read()))'
python -c 'import os; os.rename("temp/Game\x84\x7f", "temp/Game"); os.rename("temp/Game\x84\x7f.inf", "temp/Game.inf")'
UEFtrans.py $2 new Electron 0
UEFtrans.py $2 append temp/Crazee,temp/CrazeeR,temp/SCREEN,temp/CrazeePan,temp/CrazeeMod,temp/CRider,temp/Game
rm -r temp
