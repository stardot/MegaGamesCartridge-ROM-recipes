#!/bin/sh

set -e

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/A-M/BugBlast.uef ROMs/BugBlast-1.rom ROMs/BugBlast-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/CavemanCapers.uef ROMs/CavemanCapers.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/CosmicCamouflage_Tape.uef ROMs/CosmicCamouflage-1.rom ROMs/CosmicCamouflage-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/DangerUXB_Tape.uef ROMs/DangerUXB.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/DareDevilDenis.uef ROMs/DareDevilDenis.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 1000 ~/Games/UEFs/games/A-M/DeathStar.uef ROMs/DeathStar.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/DrainMania.uef ROMs/DrainMania-1.rom ROMs/DrainMania-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/EMBA.uef ROMs/EMBA.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 860 ~/Games/UEFs/games/A-M/HorseRace.uef ROMs/HorseRace.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/Joust.uef ROMs/Joust-1.rom ROMs/Joust-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/A-M/JungleJive_Tape.uef ROMs/JungleJive.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/KillerGorilla.uef ROMs/KillerGorilla.rom

# ROM, */
./UEF2ROM.py -f 0-3,6 -m ~/Games/UEFs/games/A-M/LastOfTheFree.uef ROMs/LastOfTheFree-1.rom
./UEF2ROM.py -f 4-5 -m ~/Games/UEFs/games/A-M/LastOfTheFree.uef ROMs/LastOfTheFree-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/A-M/MagicMushrooms_Tape.uef ROMs/MagicMushrooms.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/A-M/Monsters.uef ROMs/Monsters.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/MoonBuggy.uef ROMs/MoonBuggy-1.rom ROMs/MoonBuggy-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/Overdrive.uef ROMs/Overdrive.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 120 ~/Games/UEFs/games/N-Z/Pengi.uef ROMs/Pengi.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 120 ~/Games/UEFs/games/N-Z/Pinball.uef ROMs/Pinball.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/RubbleTrouble.uef ROMs/RubbleTrouble-1.rom ROMs/RubbleTrouble-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/N-Z/Sim_Tape.uef ROMs/Sim.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/SmashAndGrab.uef ROMs/SmashAndGrab.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/StockCar.uef ROMs/StockCar-1.rom ROMs/StockCar-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/N-Z/TalesOfTheArabianNights_E.uef ROMs/TalesOfTheArabianNights-1.rom ROMs/TalesOfTheArabianNights-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/VideosRevenge.uef ROMs/VideosRevenge-1.rom ROMs/VideosRevenge-2.rom
