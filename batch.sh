#!/bin/sh

set -e

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/games/A-M/Arcadians.uef ROMs/Arcadians-1.rom ROMs/Arcadians-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/games/A-M/Boxer.uef ROMs/Boxer-1.rom ROMs/Boxer-2.rom

# MGCROM, */
./UEF2ROM.py -s -w 860 -t ~/Games/UEFs/games/A-M/Breakthrough_RUN_E.uef ROMs/Breakthrough-1.rom ROMs/Breakthrough-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/A-M/BugBlast.uef ROMs/BugBlast-1.rom ROMs/BugBlast-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/CavemanCapers.uef ROMs/CavemanCapers.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/CosmicCamouflage_Tape.uef ROMs/CosmicCamouflage-1.rom ROMs/CosmicCamouflage-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/CybertronMission_Tape.uef ROMs/CybertronMission.rom

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
./UEF2ROM.py -t -w 880 -s ~/Games/UEFs/games/A-M/Firetrack_E.uef ROMs/Firetrack-1.rom ROMs/Firetrack-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/A-M/Frak_Tape.uef ROMs/Frak-1.rom ROMs/Frak-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/games/A-M/Freefall_E.uef ROMs/Freefall-1.rom ROMs/Freefall-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/Gauntlet_E.uef ROMs/Gauntlet-1.rom ROMs/Gauntlet-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 860 ~/Games/UEFs/games/A-M/HorseRace.uef ROMs/HorseRace.rom

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/games/A-M/Impact.uef ROMs/Impact-1.rom ROMs/Impact-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f -t -s ~/Games/UEFs/games/A-M/JetBootJack_E.uef ROMs/JetBootJack-1.rom ROMs/JetBootJack-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f ~/Games/UEFs/games/A-M/Joust.uef ROMs/Joust-1.rom ROMs/Joust-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/A-M/JungleJive_Tape.uef ROMs/JungleJive.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/A-M/KarateCombat.uef ROMs/KarateCombat-1.rom ROMs/KarateCombat-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 39f -s -t ~/Games/UEFs/games/A-M/KissinCousins_E.uef ROMs/KissinCousins-1.rom ROMs/KissinCousins-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/A-M/KillerGorilla.uef ROMs/KillerGorilla.rom

# ROM, */
./UEF2ROM.py -f 0-3,6 -m ~/Games/UEFs/games/A-M/LastOfTheFree.uef ROMs/LastOfTheFree-1.rom
./UEF2ROM.py -f 4-5 -m ~/Games/UEFs/games/A-M/LastOfTheFree.uef ROMs/LastOfTheFree-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/A-M/LunarRescue_E.uef ROMs/LunarRescue.rom

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
./UEF2ROM.py -w 39f -s -t ~/Games/UEFs/games/N-Z/Psycastria.uef ROMs/Psycastria-1.rom ROMs/Psycastria-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Quest.uef ROMs/Quest-1.rom ROMs/Quest-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/N-Z/Ravage_E.uef ROMs/Ravage.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Repton.uef ROMs/Repton-1.rom ROMs/Repton-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Repton2.uef ROMs/Repton2-1.rom ROMs/Repton2-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Repton3.uef ROMs/Repton3-1.rom ROMs/Repton3-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/RubbleTrouble.uef ROMs/RubbleTrouble-1.rom ROMs/RubbleTrouble-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m -s ~/Games/UEFs/games/N-Z/Saracoid.uef ROMs/Saracoid-1.rom ROMs/Saracoid-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -w 880 ~/Games/UEFs/games/N-Z/Sim_Tape.uef ROMs/Sim.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/SmashAndGrab.uef ROMs/SmashAndGrab.rom

# MGCROM, CHAIN""
./UEF2ROM.py -t -s ~/Games/UEFs/games/N-Z/SpacemanSid.uef ROMs/SpacemanSid-1.rom ROMs/SpacemanSid-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/StockCar.uef ROMs/StockCar-1.rom ROMs/StockCar-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Syncron.uef ROMs/Syncron-1.rom ROMs/Syncron-2.rom

# ROM, CHAIN""
./UEF2ROM.py -m ~/Games/UEFs/games/N-Z/TalesOfTheArabianNights_E.uef ROMs/TalesOfTheArabianNights-1.rom ROMs/TalesOfTheArabianNights-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py -s ~/Games/UEFs/games/N-Z/Thrust_Tape.uef ROMs/Thrust-1.rom ROMs/Thrust-2.rom

# MGCROM, CHAIN""
./UEF2ROM.py ~/Games/UEFs/games/N-Z/VideosRevenge.uef ROMs/VideosRevenge-1.rom ROMs/VideosRevenge-2.rom

# ROM, CHAIN""
./UEF2ROM.py -s -m ~/Games/UEFs/games/N-Z/Village.uef ROMs/Village-1.rom ROMs/Village-2.rom
