#!/bin/sh

set -e

./UEF2ROM.py -a -c e00 UEFs/3DDotty_E.uef ROMs/3DDotty.rom
./UEF2ROM.py -a -c e00/: -m -s UEFs/3DPool_E.uef ROMs/3DPool-1.rom ROMs/3DPool-2.rom
./UEF2ROM.py -a -c :2500:/ UEFs/Adventure-Micropower_E.uef ROMs/Adventure-Micropower.rom
./UEF2ROM.py -a -c : UEFs/AlienBreakIn_E.uef ROMs/AlienBreakIn.rom
./UEF2ROM.py -a -c e00 -p UEFs/AlienDropout_E.uef ROMs/AlienDropout.rom
./UEF2ROM.py -a -c e00::x:/: -m -s UEFs/Mega_Games_Cartridge/AnarchyZone.uef ROMs/AnarchyZone-1 ROMs/AnarchyZone-2
./UEF2ROM.py -a -c e00:.5ad0/: -m -s UEFs/Arcadians.uef ROMs/Arcadians-1.rom ROMs/Arcadians-2.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/AstroPlumber_E.uef ROMs/AstroPlumber.rom
./UEF2ROM.py -a -c e00:e00:/: -p -s -w 39f UEFs/Ballistix_E-EveryGameGoing-BlueRibbon.uef ROMs/Ballistix-1.rom ROMs/Ballistix-2.rom
./UEF2ROM.py -a -c x:1100/: -s -t -w 39f UEFs/BalloonBuster_E.uef ROMs/BalloonBuster.rom
./UEF2ROM.py -a -c : -m UEFs/BanditsAt3OClock_E.uef ROMs/Bandits.rom
./UEF2ROM.py -a -c e00:e00::e00:6700:120/: -p -f 0-8 -s UEFs/Barbarian_E.uef ROMs/Barbarian-Practice-1.rom ROMs/Barbarian-Practice-2.rom
./UEF2ROM.py -a -c e00:e00::e00:6700:120/: -p -f 9-17 -s UEFs/Barbarian_E.uef ROMs/Barbarian-Fight-1.rom ROMs/Barbarian-Fight-2.rom
./UEF2ROM.py -a -c ::x:x:x:x/x:/:/: -f 1-15 -s -P 290 1:2:3:1 -w 39f UEFs/Barbarian2_E.uef ROMs/Barbarian21 ROMs/Barbarian22 ROMs/Barbarian23 ROMs/Barbarian24
./UEF2ROM.py -a -c e00:e00:5800:60c0:e00/400:920:860:5d00 -s -t -w 120 UEFs/Baron_E.uef ROMs/Baron-1.rom ROMs/Baron-2.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/BarBilliards_E.uef ROMs/BarBilliards.rom
./UEF2ROM.py -a -c :/x:x:x: -s -t -w d3f:ef97 UEFs/BeachHead_E.uef ROMs/BeachHead-1.rom ROMs/BeachHead-2.rom
./UEF2ROM.py -a -c e00:1900/: -t -w 39f UEFs/BloodOfTheMutineers_E.uef ROMs/BloodOfTheMutineers-1.rom ROMs/BloodOfTheMutineers-2.rom
./UEF2ROM.py -a -c :/: -m -r -s UEFs/Boffin2-modified_BE.uef ROMs/Boffin2-1.rom ROMs/Boffin2-2.rom
./UEF2ROM.py -a -c x::x -t -w d3f -x UEFs/Mega_Games_Cartridge/BoneCruncher-patched.uef ROMs/BoneCruncher-1.rom ROMs/BoneCruncher-2.rom
./UEF2ROM.py -a -c e00:.4200 -m UEFs/Boxer.uef ROMs/Boxer.rom
./UEF2ROM.py -a -c :x:e00:e00:1100:/:e00:400:400:400:400 -r -s -w 860 -t UEFs/Breakthrough_RUN_E.uef ROMs/Breakthrough-1.rom ROMs/Breakthrough-2.rom
./UEF2ROM.py -a -c e00/: -s -t UEFs/BrianJacksSuperstarChallenge_E.uef ROMs/BrianJacksSuperstarChallenge-1.rom ROMs/BrianJacksSuperstarChallenge-2.rom
./UEF2ROM.py -a -c e00:e00:5800:e00:e00/: -w 880 UEFs/BugBlast.uef ROMs/BugBlast-1.rom ROMs/BugBlast-2.rom
./UEF2ROM.py -a -c e00:1900:e00:400:900:1000:1100:3f00 -s -t -w 39f UEFs/BugEyes_E.uef ROMs/BugEyes
./UEF2ROM.py -a -c e00::1d00/6b00 -m -s UEFs/Mega_Games_Cartridge/BugEyes2-EveryGameGoing.uef ROMs/BugEyes2-1 ROMs/BugEyes2-2
./UEF2ROM.py -a -c : UEFs/Bugs_E.uef ROMs/Bugs.rom
./UEF2ROM.py -a -c e00 -m UEFs/BumbleBee_E.uef ROMs/BumbleBee.rom
./UEF2ROM.py -a -c :/: -p -s -w 39f UEFs/Mega_Games_Cartridge/ByFairMeansOrFoul-EveryGameGoing.uef ROMs/ByFairMeansOrFoul-1.rom ROMs/ByFairMeansOrFoul-2.rom
./UEF2ROM.py -a -c e00:::/: -s -t -w d3f:ef97 UEFs/Mega_Games_Cartridge/Camelot-patched.uef ROMs/Camelot-1.rom ROMs/Camelot-2.rom
./UEF2ROM.py -a -c e00:1600: -w 880 UEFs/CastleAssault_E.uef ROMs/CastleAssault.rom
./UEF2ROM.py -a -c e00:e00:/: -m -s UEFs/CastleFrankenstein_E.uef ROMs/CastleFrankenstein-1.rom ROMs/CastleFrankenstein-2.rom
./UEF2ROM.py -a -c : -m UEFs/EXPLADV-CastlemazeAdventure_E.uef ROMs/CastlemazeAdventure.rom
./UEF2ROM.py -a -c e00:.5ff0/: -m -s UEFs/CastleOfRiddles_E.uef ROMs/CastleOfRiddles-1.rom ROMs/CastleOfRiddles-2.rom
./UEF2ROM.py -a -c : UEFs/Caterpillar-Romik_E.uef ROMs/Caterpillar.rom
./UEF2ROM.py -a -c e00:::1900:4000::4500 -w 39f UEFs/CavemanCapers.uef ROMs/CavemanCapers.rom
./UEF2ROM.py -a -c e00 UEFs/Centibug_E.uef ROMs/Centibug.rom
./UEF2ROM.py -a -c e00 UEFs/Chess-Acornsoft_E.uef ROMs/Chess-Acornsoft.rom
./UEF2ROM.py -a -c : -m UEFs/Chess-Micropower_E.uef ROMs/Chess-Micropower.rom
./UEF2ROM.py -a -c e00 -m UEFs/Chess-Superior_BE.uef ROMs/Chess-Superior.rom
./UEF2ROM.py -a -c e00 -m UEFs/ChuckieEgg_E.uef ROMs/ChuckieEgg.rom
./UEF2ROM.py -a -c e00:3000:5400:x -m -s UEFs/Citadel-PIASRR_E.uef ROMs/Citadel-1.rom ROMs/Citadel-2.rom
./UEF2ROM.py -a -c :/: -m -r -s UEFs/ClassicAdventure_RUN_BE.uef ROMs/ClassicAdventure-1.rom ROMs/ClassicAdventure-2.rom
./UEF2ROM.py -a -c :x:x:900:e00:5100:/2983:2983:2983/2983 -f 0-6:s:7-10 -m -s -P 39f 1:2:1 UEFs/Clogger_Tape.uef ROMs/Clogger1 ROMs/Clogger2 ROMs/Clogger3
./UEF2ROM.py -a -c :400/: -m -r -s UEFs/Mega_Games_Cartridge/CodenameDroid-patched.uef ROMs/CodenameDroid-1.rom ROMs/CodenameDroid-2.rom
./UEF2ROM.py -a -c :/: -s -w 39f UEFs/Commando-PIASRR_E.uef ROMs/Commando-1 ROMs/Commando-2
./UEF2ROM.py -a -c e00 -w 39f UEFs/ConditionRed_E.uef ROMs/ConditionRed.rom
./UEF2ROM.py -a -c x:: -f 1-3 -m -r UEFs/Mega_Games_Cartridge/Confuzion-EveryGameGoing.uef ROMs/Confuzion.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/CopsNRobbers_BE.uef ROMs/CopsNRobbers
./UEF2ROM.py -a -c e00:e00 UEFs/CosmicCamouflage_Tape.uef ROMs/CosmicCamouflage.rom
./UEF2ROM.py -a -c e00::::::x/x -s -t -w d3f:ef97 UEFs/CrazeeRider_E.uef ROMs/CrazeeRider-1.rom ROMs/CrazeeRider-2.rom
./UEF2ROM.py -a -c e00:.4543 -m UEFs/CrazyTracer_E.uef ROMs/CrazyTracer.rom
./UEF2ROM.py -a -c e00 -m UEFs/CreepyCave_BE.uef ROMs/CreepyCave.rom
./UEF2ROM.py -a -c ::x UEFs/Croaker_E.uef ROMs/Croaker.rom
./UEF2ROM.py -a -c :::x:x:x:x:dc0:dc0/dc0 -p -t -w 39f UEFs/CrystalCastles_E.uef ROMs/CrystalCastles-1.rom ROMs/CrystalCastles-2.rom
./UEF2ROM.py -a -c : UEFs/CybertronMission_Tape.uef ROMs/CybertronMission.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/CylonAttack_E.uef ROMs/CylonAttack-1.rom ROMs/CylonAttack-2.rom
./UEF2ROM.py -a -c e00:1500: UEFs/DangerUXB_Tape.uef ROMs/DangerUXB.rom
./UEF2ROM.py -a -c : UEFs/DareDevilDenis.uef ROMs/DareDevilDenis.rom
./UEF2ROM.py -a -c e00:::::3000 -p -w 39f UEFs/DeathStar-SCRR_E.uef ROMs/DeathStar.rom
./UEF2ROM.py -a -c e00::x:x/: -s -w 39f UEFs/DenisThroughTheDrinkingGlass_E.uef ROMs/DenisThroughTheDrinkingGlass-1.rom ROMs/DenisThroughTheDrinkingGlass-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/DespatchRider_E.uef ROMs/DespatchRider.rom
./UEF2ROM.py -a -c :1600::1600 -m UEFs/DiamondMine-MRM_E.uef ROMs/DiamondMine.rom
./UEF2ROM.py -a -c e00: -w 39f UEFs/DiamondMine2-BlueRibbon_E.uef ROMs/DiamondMine2.rom
./UEF2ROM.py -a -c e00: -s -T -w 39f UEFs/DiamondPete_E.uef ROMs/DiamondPete
./UEF2ROM.py -a -c e00:1600:5bc0:x:x -m UEFs/Dominoes_E.uef ROMs/Dominoes.rom
./UEF2ROM.py -a -c e00:x:x -w 39f UEFs/DrainMania.uef ROMs/DrainMania-1.rom ROMs/DrainMania-2.rom
./UEF2ROM.py -a -c e00 UEFs/DAR-Draughts_E.uef ROMs/Draughts-Acornsoft.rom
./UEF2ROM.py -a -c : -m UEFs/Draughts-ComputerConcepts_BE.uef ROMs/Draughts-ComputerConcepts.rom
./UEF2ROM.py -a -c e00 UEFs/Draughts-Superior_E.uef ROMs/Draughts-Superior.rom
./UEF2ROM.py -a -c :1e00/: -m -s UEFs/Mega_Games_Cartridge/EddieKiddJumpChallenge-EveryGameGoing.uef ROMs/EddieKiddJumpChallenge-1.rom ROMs/EddieKiddJumpChallenge-2.rom
./UEF2ROM.py -a -c :/: -f 1-28 -r -s -w 39f UEFs/Mega_Games_Cartridge/Dunjunz-patched.uef ROMs/Dunjunz-1.rom ROMs/Dunjunz-2.rom
./UEF2ROM.py -a -c e00: -m UEFs/ElectronInvaders_E.uef ROMs/ElectronInvaders.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Elite-SRR_E.uef ROMs/Elite-1.rom ROMs/Elite-2.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/Elixir_E.uef ROMs/Elixir-1.rom ROMs/Elixir-2.rom
./UEF2ROM.py -a -c : -m UEFs/Empire_BE.uef ROMs/Empire.rom
./UEF2ROM.py -a -c : -m UEFs/Enigma_E.uef ROMs/Enigma.rom
./UEF2ROM.py -a -c :::e00 UEFs/EMBA.uef ROMs/EMBA.rom
./UEF2ROM.py -a -c e00 UEFs/Erbert_E.uef ROMs/Erbert.rom
./UEF2ROM.py -a -c e00:e00::x -f 1-5 -m -s -P 290 1:2:3:0 UEFs/Mega_Games_Cartridge/Exile-EveryGameGoing.uef ROMs/Exile1 ROMs/Exile2 ROMs/Exile3 ROMs/Exile4
./UEF2ROM.py -a -c :/: -m -s UEFs/EyeOfZolton_BE.uef ROMs/EyeOfZolton-1.rom ROMs/EyeOfZolton-2.rom
./UEF2ROM.py -a -c x::x/3041:::3779:x:3f12:/: -f 0-13 -m -s -P 290 1:2:1 UEFs/EType_E.uef ROMs/EType1 ROMs/EType2 ROMs/EType3
./UEF2ROM.py -a -c ::x -m UEFs/FelixAndTheFruitMonsters_E.uef ROMs/FelixAndTheFruitMonsters.rom
./UEF2ROM.py -a -c e00::x -m UEFs/FelixInTheFactory_E.uef ROMs/FelixInTheFactory.rom
./UEF2ROM.py -a -c e00 -m UEFs/FelixMeetsTheEvilWeevils_E.uef ROMs/FelixMeetsTheEvilWeevils.rom
./UEF2ROM.py -a -c e00:.5700 -m UEFs/Firebug_E.uef ROMs/Firebug.rom
./UEF2ROM.py -a -c e00:::::c00:600/315b -t -w 880 -s UEFs/Firetrack_E.uef ROMs/Firetrack-1.rom ROMs/Firetrack-2.rom
./UEF2ROM.py -a -c e00/: -s UEFs/Frak_Tape.uef ROMs/Frak-1.rom ROMs/Frak-2.rom
./UEF2ROM.py -a -c e00:1900:e00:e00:::::e00 -p -s -w 39f UEFs/Frankenstein2000_E.uef ROMs/Frankenstein2000.rom
./UEF2ROM.py -a -c e00:.21bb/: -m -s UEFs/Freefall_E.uef ROMs/Freefall-1.rom ROMs/Freefall-2.rom
./UEF2ROM.py -a -c e00: -m UEFs/Frenzy_E.uef ROMs/Frenzy.rom
./UEF2ROM.py -a -c :::x -t -w d3f:ef97 UEFs/Galaforce_E.uef ROMs/Galaforce-1.rom ROMs/Galaforce-2.rom
./UEF2ROM.py -a -c e00::e00::e00:x:x -p -s -w 39f UEFs/Mega_Games_Cartridge/PIAS6-Galaforce2-EveryGameGoing-fromSSD.uef ROMs/Galaforce2-1.rom ROMs/Galaforce2-2.rom
./UEF2ROM.py -a -c e00:e00/: -m -s UEFs/Gauntlet_E.uef ROMs/Gauntlet-1.rom ROMs/Gauntlet-2.rom
./UEF2ROM.py -a -c e00:2200:/: -p -s -w 39f -f 3-5 UEFs/Ghouls-PIASRR_E.uef ROMs/Ghouls-1.rom ROMs/Ghouls-2.rom
./UEF2ROM.py -a -c e00/: -s -w 39f UEFs/GisburnesCastle_E.uef ROMs/GisburnesCastle-1.rom ROMs/GisburnesCastle-2.rom
./UEF2ROM.py -a -c e00:.13b2 -m UEFs/Go_E.uef ROMs/Go.rom
./UEF2ROM.py -a -c e00:e00:x -w 39f -t UEFs/Guardian_E.uef ROMs/Guardian.rom
./UEF2ROM.py -a -c e00:c00:e00:5bc0/900:b00:5800 -m -s UEFs/Gunfighter_BE.uef ROMs/Gunfighter-1.rom ROMs/Gunfighter-2.rom
./UEF2ROM.py -a -c : UEFs/Gunsmoke_E.uef ROMs/Gunsmoke.rom
./UEF2ROM.py -a -c e00/: -t -s -w 39f UEFs/Gyroscope_E.uef ROMs/Gyroscope-1.rom ROMs/Gyroscope-2.rom
./UEF2ROM.py -a -c e00/: -m -s UEFs/Hampstead_BE.uef ROMs/Hampstead-1.rom ROMs/Hampstead-2.rom
./UEF2ROM.py -a -c : -m UEFs/HardHatHarry-ElectronTape.uef ROMs/HardHatHarry.rom
./UEF2ROM.py -a -c e00 -m UEFs/10Best1-HauntedHouse_E.uef ROMs/HauntedHouse.rom
./UEF2ROM.py -a -c :/: -m -s UEFs/Mega_Games_Cartridge/HelterSkelter-patched.uef ROMs/HelterSkelter-1 ROMs/HelterSkelter-2
./UEF2ROM.py -a -c : -m -r UEFs/Hex_RUN_BE.uef ROMs/Hex.rom
./UEF2ROM.py -a -c :5d00:::1ec0::900 -m UEFs/Hobgoblin_E.uef ROMs/Hobgoblin.rom
./UEF2ROM.py -a -c :::::57d0/: -m -s UEFs/Hobgoblin2_E.uef ROMs/Hobgoblin2-1.rom ROMs/Hobgoblin2-2.rom
./UEF2ROM.py -a -c x:e00: -r -w 880 UEFs/Mega_Games_Cartridge/Hopper-STH-ROM.uef ROMs/Hopper.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/HorseRace_E.uef ROMs/HorseRace.rom
./UEF2ROM.py -a -c :900 -m UEFs/Hunchback-Ocean_E.uef ROMs/Hunchback.rom
./UEF2ROM.py -a -c :/: -p -s -w 39f UEFs/Hunkidory_BE.uef ROMs/Hunkidory-1.rom ROMs/Hunkidory-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/Mega_Games_Cartridge/HyperViper-fromSSD.uef ROMs/HyperViper
./UEF2ROM.py -a -c .e00:/: -f 2-4:s:5-24 -r -w 39f UEFs/Mega_Games_Cartridge/Icarus-patched.uef ROMs/Icarus-1.rom ROMs/Icarus-2.rom
./UEF2ROM.py -a -c e00::x:/: -m -s UEFs/Impact.uef ROMs/Impact-1.rom ROMs/Impact-2.rom
./UEF2ROM.py -a -c :x:x:x/x -s -t -w d3f:ef97 UEFs/ImpossibleMission_E.uef ROMs/ImpossibleMission-1.rom ROMs/ImpossibleMission-2.rom
./UEF2ROM.py -a -c e00:5800:x:x:/x:/35c1:35c1:35c1:35c1:35c1/35c1:35c1:35c1:35c1:35c1/35c1:35c1:35c1:35c1:35c1/35c1:35c1:35c1 -f 1-5:s:6-22 -s -P 290 1:2:3:4:5:2 -w 39f UEFs/Imogen_E.uef ROMs/Imogen1 ROMs/Imogen2 ROMs/Imogen3 ROMs/Imogen4 ROMs/Imogen5 ROMs/Imogen6
./UEF2ROM.py -a -c e00:6980:8c0/: -m -s UEFs/Inertia_E.uef ROMs/Inertia-1.rom ROMs/Inertia-2.rom
./UEF2ROM.py -a -c :/: -m UEFs/IntergalacticTrader_E.uef ROMs/IntergalacticTrader
./UEF2ROM.py -a -c e00::x -w 39f -t -s UEFs/JetBootJack_E.uef ROMs/JetBootJack-1.rom ROMs/JetBootJack-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/JetPowerJack_E.uef ROMs/JetPowerJack.rom
./UEF2ROM.py -a -c : -p -s -w 39f UEFs/Mega_Games_Cartridge/Joey-patched.uef ROMs/Joey.rom
./UEF2ROM.py -a -c e00 -m UEFs/Skirmish_E.uef ROMs/Joust.rom
./UEF2ROM.py -a -c e00 -m UEFs/JungleJive_Tape.uef ROMs/JungleJive.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/KarateCombat.uef ROMs/KarateCombat-1.rom ROMs/KarateCombat-2.rom
./UEF2ROM.py -a -c x:/: -s -w 39f UEFs/Kayleth_E.uef ROMs/Kayleth-1.rom ROMs/Kayleth-2.rom
./UEF2ROM.py -a -c e00: UEFs/KillerGorilla.uef ROMs/KillerGorilla.rom
./UEF2ROM.py -a -c :/: -s -w 39f UEFs/KillerGorilla2-PIAS_E.uef ROMs/KillerGorilla2-1.rom ROMs/KillerGorilla2-2.rom
./UEF2ROM.py -a -c :/: -m -s UEFs/KingdomOfKlein_E.uef ROMs/KingdomOfKlein-1.rom ROMs/KingdomOfKlein-2.rom
./UEF2ROM.py -a -c e00::x:x -w 120 -s -t UEFs/KissinCousins_E.uef ROMs/KissinCousins-1.rom ROMs/KissinCousins-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/10Best1-Knockout_E.uef ROMs/Knockout.rom
./UEF2ROM.py -a -c x:/: -m -r -s UEFs/LastOfTheFree_E.uef ROMs/LastOfTheFree-1.rom ROMs/LastOfTheFree-2.rom
./UEF2ROM.py -a -c :::58e0:4160:d00/400 -p -w 39f UEFs/LocksOfLuck_E.uef ROMs/LocksOfLuck-1.rom ROMs/LocksOfLuck-2.rom
./UEF2ROM.py -a -c e00:1300/: -m -s UEFs/Locomotion_E.uef ROMs/Locomotion-1.rom ROMs/Locomotion-2.rom
./UEF2ROM.py -a -c ::x:/: -m UEFs/Loopz_E.uef ROMs/Loopz-1.rom ROMs/Loopz-2.rom
./UEF2ROM.py -a -c e00:e00::x -m UEFs/LunarRescue_E.uef ROMs/LunarRescue.rom
./UEF2ROM.py -a -c e00:.4700 -m UEFs/MagicMushrooms_Tape.uef ROMs/MagicMushrooms.rom
./UEF2ROM.py -a -c e00: -m UEFs/Maze_E.uef ROMs/Maze.rom
./UEF2ROM.py -a -c e00:e00::e00 -m UEFs/Mega_Games_Cartridge/MazezaM_2.1.uef ROMs/MazezaM.rom
./UEF2ROM.py -a -c e00 -f 0-1 UEFs/Meteors_E.uef ROMs/Meteors.rom
./UEF2ROM.py -a -c e00:1200:1400 -m UEFs/Microball_BE.uef ROMs/Microball.rom
./UEF2ROM.py -a -c ::::/::x -p -t -w 39f -s UEFs/Mikie_E.uef ROMs/Mikie-1.rom ROMs/Mikie-2.rom
./UEF2ROM.py -a -r -c : -f 1 UEFs/Mineshaft_RUN_E.uef ROMs/Mineshaft.rom
./UEF2ROM.py -a -c e00: -m UEFs/MissileControl_E.uef ROMs/MissileControl.rom
./UEF2ROM.py -a -c e00: -w 880 UEFs/Monsters.uef ROMs/Monsters.rom
./UEF2ROM.py -a -c e00:1400 -w 39f UEFs/MoonBuggy.uef ROMs/MoonBuggy.rom
./UEF2ROM.py -a -c :b00 -m UEFs/MoonRaider_E.uef ROMs/MoonRaider.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/MouseTrap_E.uef ROMs/MouseTrap-1.rom ROMs/MouseTrap-2.rom
./UEF2ROM.py -a -c e00::x: -p -s -w 39f UEFs/MrWiz.uef ROMs/MrWiz.rom
./UEF2ROM.py -a -c e00::::/x:x: -s -t -T -w 100 UEFs/RHT3-Myorem_E.uef ROMs/Myorem-1.rom ROMs/Myorem-2.rom
./UEF2ROM.py -a -c e00:e00:1c00:5bc0:6980:::/1c00 -p -s -w 39f UEFs/Network-PIASRR_E.uef ROMs/Network-1.rom ROMs/Network-2.rom
./UEF2ROM.py -a -c : -w 39f UEFs/NightmareMaze-MRM_E.uef ROMs/NightmareMaze.rom
./UEF2ROM.py -a -c ::60c0:2100:/: -p -s -w 39f UEFs/Mega_Games_Cartridge/OmegaOrb-EveryGameGoing-fromSSD.uef ROMs/OmegaOrb-1.rom ROMs/OmegaOrb-2.rom
./UEF2ROM.py -a -c e00: -m UEFs/Mega_Games_Cartridge/Orbital-EveryGameGoing.uef ROMs/Orbital
./UEF2ROM.py -a -c e00::2300 UEFs/Overdrive_E.uef ROMs/Overdrive.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/Oxbridge_E.uef ROMs/Oxbridge-1.rom ROMs/Oxbridge-2.rom
./UEF2ROM.py -a -c e00/: -s UEFs/PalaceOfMagic_E.uef ROMs/PalaceOfMagic-1.rom ROMs/PalaceOfMagic-2.rom
./UEF2ROM.py -a -c e00::2000/: -f 1-3 -s UEFs/Mega_Games_Cartridge/PalaceOfMagic2016.uef ROMs/PalaceOfMagic2016-1.rom ROMs/PalaceOfMagic2016-2.rom
./UEF2ROM.py -a -c e00: -w 120 UEFs/Pengi_E.uef ROMs/Pengi.rom
./UEF2ROM.py -a -c e00:/: -w 39f UEFs/PercyPenguin_E.uef ROMs/PercyPenguin
./UEF2ROM.py -a -c :/77ad -s -t -w 39f UEFs/Perplexity_E.uef ROMs/Perplexity-1.rom ROMs/Perplexity-2.rom
./UEF2ROM.py -a -c e00:.5fc3/: -m -s UEFs/PhilosophersQuest_E.uef ROMs/PhilosophersQuest-1.rom ROMs/PhilosophersQuest-2.rom
./UEF2ROM.py -a -c : -m UEFs/PhilosophersStone_BE.uef ROMs/PhilosophersStone.rom
./UEF2ROM.py -a -c ::x:x -w 120 UEFs/Pinball.uef ROMs/Pinball.rom
./UEF2ROM.py -a -c x:x/: -m -r -s UEFs/Mega_Games_Cartridge/Pipeline-patched.uef ROMs/Pipeline-1.rom ROMs/Pipeline-2.rom
./UEF2ROM.py -a -c :/: -m -r -s UEFs/Pipemania_E.uef ROMs/Pipemania-1.rom ROMs/Pipemania-2.rom
./UEF2ROM.py -a -c :2000 -m UEFs/PlanB_BE.uef ROMs/PlanB.rom
./UEF2ROM.py -a -c e00 UEFs/PlanB2_BE.uef ROMs/PlanB2.rom
./UEF2ROM.py -a -c e00: -m UEFs/Planetoid_E.uef ROMs/Planetoid.rom
./UEF2ROM.py -a -c : -m UEFs/Plunder_E.uef ROMs/Plunder
./UEF2ROM.py -a -c e00 -m UEFs/Podd_BE.uef ROMs/Podd.rom
./UEF2ROM.py -a -c : -m UEFs/Positron_E.uef ROMs/Positron.rom
./UEF2ROM.py -a -c e00:e00::4e00:5300/: -s UEFs/Predator_E.uef ROMs/Predator-1.rom ROMs/Predator-2.rom
./UEF2ROM.py -a -c :2d00/: -s -t -T -w d60 UEFs/RHT2-ProjectThesius_E.uef ROMs/ProjectThesius-1.rom ROMs/ProjectThesius-2.rom
./UEF2ROM.py -a -c e00:x:/: -w 39f -s -t UEFs/Psycastria_E.uef ROMs/Psycastria-1.rom ROMs/Psycastria-2.rom
./UEF2ROM.py -a -c : -m -r UEFs/PuppetMan_RUN_BE.uef ROMs/PuppetMan.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Quest.uef ROMs/Quest-1.rom ROMs/Quest-2.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/QuestForFreedom_E.uef ROMs/QuestForFreedom-1.rom ROMs/QuestForFreedom-2.rom
./UEF2ROM.py -a -c :/: -m -s UEFs/QuestForTheHolyGrail_E.uef ROMs/QuestForTheHolyGrail-1.rom ROMs/QuestForTheHolyGrail-2.rom
./UEF2ROM.py -a -c :e00:::1400/: -s UEFs/Qwak_E.uef ROMs/Qwak-1.rom ROMs/Qwak-2.rom
./UEF2ROM.py -a -c :1800:::::2000:2800:/: -r -s -p -w 380 UEFs/Mega_Games_Cartridge/Ransack-EveryGameGoing-fromSSD.uef ROMs/Ransack-1.rom ROMs/Ransack-2.rom
./UEF2ROM.py -a -c : -m UEFs/Ravage_E.uef ROMs/Ravage.rom
./UEF2ROM.py -a -c x:::x:/: -m -r -s UEFs/Mega_Games_Cartridge/Ravenskull-patched.uef ROMs/Ravenskull-1.rom ROMs/Ravenskull-2.rom
./UEF2ROM.py -a -c e00:/: -s -w 39f UEFs/RebelPlanet_E.uef ROMs/RebelPlanet-1.rom ROMs/RebelPlanet-2.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Repton.uef ROMs/Repton-1.rom ROMs/Repton-2.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Repton2.uef ROMs/Repton2-1.rom ROMs/Repton2-2.rom
./UEF2ROM.py -a -c e00:/: -f 4-6:12-13 -s UEFs/Repton3_E.uef ROMs/Repton3-1.rom ROMs/Repton3-2.rom
./UEF2ROM.py -a -c e00:::1900:/:/:/: -f 1-6:11-15 -s -P 290 1:2:3:1 UEFs/ReptonAroundTheWorld_E.uef ROMs/ReptonATW1 ROMs/ReptonATW2 ROMs/ReptonATW3 ROMs/ReptonATW4
./UEF2ROM.py -a -c e00:::1900:/:/:/: -f 1-6:11-15 -s -P 290 1:2:3:1 UEFs/ReptonTheLifeOf_E.uef ROMs/ReptonLTO1 ROMs/ReptonLTO2 ROMs/ReptonLTO3 ROMs/ReptonLTO4
./UEF2ROM.py -a -c e00:::1900:/:/:/: -f 1-6:11-15 -s -P 290 1:2:3:1 UEFs/ReptonThruTime_E.uef ROMs/ReptonTT1 ROMs/ReptonTT2 ROMs/ReptonTT3 ROMs/ReptonTT4
./UEF2ROM.py -a -c e00 UEFs/DAR-Reversi_E.uef ROMs/Reversi.rom
./UEF2ROM.py -a -c e00::e00 -m UEFs/Reversi-Superior_E.uef ROMs/Reversi-Superior.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/RHT1-RickHanson_E.uef ROMs/RickHanson-1.rom ROMs/RickHanson-2.rom
./UEF2ROM.py -a -c ::::x/400/bba:x:3881:3881:3881/3881:3881/: -f 3-8:s:9-15 -s -P 290 1:2:3:4:2 -t -w 39f UEFs/Ricochet_E.uef ROMs/Ricochet1 ROMs/Ricochet2 ROMs/Ricochet3 ROMs/Ricochet4 ROMs/Ricochet5
./UEF2ROM.py -a -c e00 -m UEFs/RigAttack_E.uef ROMs/RigAttack.rom
./UEF2ROM.py -a -c : -m -r UEFs/ROS1-TheProphecy_RUN_BE.uef ROMs/RisingOfSalandraPart1.rom
./UEF2ROM.py -a -c : -m -r UEFs/ROS2-ReturnOfTheWarrior_RUN_BE.uef ROMs/RisingOfSalandraPart2.rom
./UEF2ROM.py -a -s -t -w 100 -f 0-2 UEFs/Robotron_E.uef ROMs/Robotron-1.rom ROMs/Robotron-2.rom
./UEF2ROM.py -a -c e00:e00:2f00/: UEFs/RubbleTrouble.uef ROMs/RubbleTrouble-1.rom ROMs/RubbleTrouble-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/Saracoid.uef ROMs/Saracoid.rom
./UEF2ROM.py -a -c e00 UEFs/SavagePond-Starcade_E.uef ROMs/SavagePond.rom
./UEF2ROM.py -a -c : -m UEFs/Shark_E.uef ROMs/Shark.rom
./UEF2ROM.py -a -c e00: -w 880 UEFs/Sim_Tape.uef ROMs/Sim.rom
./UEF2ROM.py -a -c e00:e00:::3c00/: -f 0-7 -p -s -w 39f UEFs/SimCity_E.uef ROMs/SimCity-1.rom ROMs/SimCity-2.rom
./UEF2ROM.py -a -c e00::5000 UEFs/SmashAndGrab_E.uef ROMs/SmashAndGrab.rom
./UEF2ROM.py -a -c x:e00: -r -w 880 UEFs/Mega_Games_Cartridge/Snapper-STH-ROM.uef ROMs/Snapper.rom
./UEF2ROM.py -a -c e00::.2f8a -m UEFs/Snooker-Acornsoft_E.uef ROMs/Snooker.rom
./UEF2ROM.py -a -c e00:1900:e00:400:900:1000:1100:3f00 -s -t -w 39f UEFs/SpaceAgentZeldaMeetsTheBugEyes_E.uef ROMs/SpaceAgentZeldaMeetsTheBugEyes.rom
./UEF2ROM.py -a -c e00:5000: -m UEFs/Mega_Games_Cartridge/SpaceJailer_E.uef ROMs/SpaceJailer
./UEF2ROM.py -a -c e00::x -s -t UEFs/SpacemanSid_E.uef ROMs/SpacemanSid-1.rom ROMs/SpacemanSid-2.rom
./UEF2ROM.py -a -c x:/: -m UEFs/Mega_Games_Cartridge/SpaceRanger-patched.uef ROMs/SpaceRanger.rom
./UEF2ROM.py -a -c e00:e00:5000: -w 39f UEFs/Spectipede_E.uef ROMs/Spectipede
./UEF2ROM.py -a -c :::x/:/: -f 1-6 -m -s -r -P 290 1:2:0 UEFs/SpellBinder_E.uef ROMs/Spellbinder1 ROMs/Spellbinder2 ROMs/Spellbinder3
./UEF2ROM.py -a -c e00:x:/: -s -t -w 39f UEFs/SphereOfDestiny_E.uef ROMs/SphereOfDestiny-1.rom ROMs/SphereOfDestiny-2.rom
./UEF2ROM.py -a -c e00:.5775/: -m -s UEFs/SphinxAdventure_E.uef ROMs/SphinxAdventure-1.rom ROMs/SphinxAdventure-2.rom
./UEF2ROM.py -a -c e00::::::e00::/: -m -s UEFs/Spitfire40_E.uef ROMs/Spitfire40-1.rom ROMs/Spitfire40-2.rom
./UEF2ROM.py -a -c :/: -f 3-6 -m -r -s UEFs/SpyCat_E.uef ROMs/SpyCat-1.rom ROMs/SpyCat-2.rom
./UEF2ROM.py -a -c x::x:/: -p -s -w 39f -x UEFs/Mega_Games_Cartridge/SpyVsSpy-patched.uef ROMs/SpyVsSpy-1.rom ROMs/SpyVsSpy-2.rom
./UEF2ROM.py -a -c :2000/: -m -s UEFs/T-STAR.uef ROMs/StarDrifter-1 ROMs/StarDrifter-2
./UEF2ROM.py -a -c e00/: -m -s UEFs/Mega_Games_Cartridge/PI14-StarPort-EveryGameGoing-fromSSD.uef ROMs/StarPort-1.rom ROMs/StarPort-2.rom
./UEF2ROM.py -a -c x:e00: -f 0:1:3:2 -r -w 880 UEFs/Mega_Games_Cartridge/StarshipCommand-STH-ROM.uef ROMs/StarshipCommand.rom
./UEF2ROM.py -a -c e00:3780:900:2000/7620 -m -s UEFs/StarWars_E.uef ROMs/StarWars-1.rom ROMs/StarWars-2.rom
./UEF2ROM.py -a -c :e00::e00/: UEFs/SteveDavisSnooker-PIASRR_E.uef ROMs/SteveDavisSnooker.rom
./UEF2ROM.py -a -c e00:e00 UEFs/StockCar.uef ROMs/StockCar.rom
./UEF2ROM.py -a -c :e00/: -s -t UEFs/Stormcycle_E.uef ROMs/Stormcycle-1.rom ROMs/Stormcycle-2.rom
./UEF2ROM.py -a -c e00: -w 39f -t UEFs/Stranded_E.uef ROMs/Stranded.rom
./UEF2ROM.py -a -c e00:e00:3a00/: -s -t -w 860 UEFs/StrykersRun-PIASRR_E.uef ROMs/StrykersRun-1.rom ROMs/StrykersRun-2.rom
./UEF2ROM.py -a -c e00:e00:/400 -m -s UEFs/SupermanTheGame_BE.uef ROMs/SupermanTheGame-1.rom ROMs/SupermanTheGame-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/SuperPool_E.uef ROMs/SuperPool.rom
./UEF2ROM.py -a -c e00 -t -w 39f UEFs/Survivors_BE.uef ROMs/Survivors.rom
./UEF2ROM.py -a -c ::1200: -m UEFs/Swag_E.uef ROMs/Swag.rom
./UEF2ROM.py -a -c e00 -m UEFs/Swoop_E.uef ROMs/Swoop.rom
./UEF2ROM.py -a -c e00:1900/: -s UEFs/Syncron_E.uef ROMs/Syncron-1.rom ROMs/Syncron-2.rom
./UEF2ROM.py -a -c : -m UEFs/TalesOfTheArabianNights_E.uef ROMs/TalesOfTheArabianNights.rom
./UEF2ROM.py -a -c e00 -p -w 39f UEFs/Tempest_E.uef ROMs/Tempest.rom
./UEF2ROM.py -a -c :/: -f 3-6 -m -r -s UEFs/Terrormolinos_BE.uef ROMs/Terrormolinos-1.rom ROMs/Terrormolinos-2.rom
./UEF2ROM.py -a -c e00:2f00:5800:1200 -m UEFs/Tetris_BE.uef ROMs/Tetris.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/TheHuntSearchForShauna_E.uef ROMs/TheHunt1 ROMs/TheHunt2
./UEF2ROM.py -a -c :/:/:/: -m -s -P 290 1:2:3:1 UEFs/Mega_Games_Cartridge/LastNinja-EveryGameGoing-patched.uef ROMs/LastNinja1 ROMs/LastNinja2 ROMs/LastNinja3 ROMs/LastNinja4
./UEF2ROM.py -a -c :4000: -m UEFs/TheMine_E.uef ROMs/TheMine.rom
./UEF2ROM.py -a -c : -m -r UEFs/TheNineDancers_RUN_BE.uef ROMs/TheNineDancers.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Thrust_Tape.uef ROMs/Thrust-1.rom ROMs/Thrust-2.rom
./UEF2ROM.py -a -c ::::x:/: -r -s -w 39f UEFs/Thunderstruck_E.uef ROMs/Thunderstruck-1.rom ROMs/Thunderstruck-2.rom
./UEF2ROM.py -a -c x:/: -m -r -s UEFs/Thunderstruck2_E.uef ROMs/Thunderstruck2-1.rom ROMs/Thunderstruck2-2.rom
./UEF2ROM.py -a -c e00:/: -w 39f UEFs/Trapper_E.uef ROMs/Trapper
./UEF2ROM.py -a -c :/: -m UEFs/EXPLADV-TunnelAdventure_E.uef ROMs/TunnelAdventure.rom
./UEF2ROM.py -a -c e00::e00:/: -m -s UEFs/TwinKingdomValley-modified_E.uef ROMs/TwinKingdomValley-1.rom ROMs/TwinKingdomValley-2.rom
./UEF2ROM.py -a -c :4300/: -l -s UEFs/TwelfthNight-Electron.uef ROMs/TwelfthNight-1.rom ROMs/TwelfthNight-2.rom
./UEF2ROM.py -a -m -r UEFs/Ultron_E.uef ROMs/Ultron.rom
./UEF2ROM.py -a -c : -m UEFs/EXPLADV-UndegroundAdventure_E.uef ROMs/UndergroundAdventure.rom
./UEF2ROM.py -a -c :::x -w 120 UEFs/VideosRevenge-PIASRR_E.uef ROMs/VideosRevenge-1.rom ROMs/VideosRevenge-2.rom
./UEF2ROM.py -a -c e00::b00:10d0:2f30/658 -s -m UEFs/VillageOfLostSouls-RR_E.uef ROMs/Village-1.rom ROMs/Village-2.rom
./UEF2ROM.py -a -c e00::x:/: -s -t -w 120 UEFs/Vindaloo_E.uef ROMs/Vindaloo
./UEF2ROM.py -a -c :/: -m -r -s UEFs/West_RUN_E.uef ROMs/West-1.rom ROMs/West-2.rom
./UEF2ROM.py -a -c e00:e00/: -m -s UEFs/WheelOfFortune_E.uef ROMs/WheelOfFortune-1.rom ROMs/WheelOfFortune-2.rom
./UEF2ROM.py -a -c : -m UEFs/Where_E.uef ROMs/Where.rom
./UEF2ROM.py -a -c e00: -f 1-2 -m UEFs/WhiteKnightMk11_E.uef ROMs/WhiteKnightMk11.rom
./UEF2ROM.py -a -c e00:/: -s -T -w 39f UEFs/Woks_BE.uef ROMs/Woks-1 ROMs/Woks-2
./UEF2ROM.py -a -c : -m -r UEFs/Wychwood_RUN_BE.uef ROMs/Wychwood.rom
./UEF2ROM.py -a -c :::x -s -t -w d3f:ef97 UEFs/XOR_E.uef ROMs/XOR-1.rom ROMs/XOR-2.rom
./UEF2ROM.py -a -c e00:5300:500:1100/:x:5f80 -f 1-7 -p -s -t -w 39f UEFs/YieArKungFu_E.uef ROMs/YieArKungFu-1.rom ROMs/YieArKungFu-2.rom
./UEF2ROM.py -a -c e00:1d00:1d00:1d00:2800/2400 -m -s UEFs/Mega_Games_Cartridge/YieArKungFu2-EveryGameGoing.uef ROMs/YieArKungFu2-1.rom ROMs/YieArKungFu2-2.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Zalaga-ALRR_E.uef ROMs/Zalaga-1.rom ROMs/Zalaga-2.rom
./UEF2ROM.py -a -c e00 UEFs/ZanyKongJunior_E.uef ROMs/ZanyKongJunior.rom
./UEF2ROM.py -a -c :5800:/: -m -s UEFs/Zenon_E.uef ROMs/Zenon-1.rom ROMs/Zenon-2.rom
./UEF2ROM.py -a -c :/: -m -s -f 0-1 UEFs/Ziggy_E.uef ROMs/Ziggy-1.rom ROMs/Ziggy-2.rom
