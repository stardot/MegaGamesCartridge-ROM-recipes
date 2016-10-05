#!/bin/sh

set -e

./UEF2ROM.py -a -c e00 UEFs/3DDotty_E.uef ROMs/3DDotty.rom
./UEF2ROM.py -a -c e00/: -m -s UEFs/3DPool_E.uef ROMs/3DPool-1.rom ROMs/3DPool-2.rom
./UEF2ROM.py -a -b UEFs/Adventure-Micropower_E.uef ROMs/Adventure-Micropower.rom
./UEF2ROM.py -a UEFs/AlienBreakIn_E.uef ROMs/AlienBreakIn-1.rom
./UEF2ROM.py -a -c e00:.5ad0/: -m -s UEFs/Arcadians.uef ROMs/Arcadians-1.rom ROMs/Arcadians-2.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/AstroPlumber_E.uef ROMs/AstroPlumber.rom
./UEF2ROM.py -a -c x:1100/: -s -t -w 39f UEFs/BalloonBuster_E.uef ROMs/BalloonBuster.rom
./UEF2ROM.py -a -c e00:e00::e00:6700:120/: -p -f 0-8 -s UEFs/Barbarian_E.uef ROMs/Barbarian-Practice-1.rom ROMs/Barbarian-Practice-2.rom
./UEF2ROM.py -a -c e00:e00::e00:6700:120/: -p -f 9-17 -s UEFs/Barbarian_E.uef ROMs/Barbarian-Fight-1.rom ROMs/Barbarian-Fight-2.rom
./UEF2ROM.py -a -c e00:e00:5800:60c0:e00/400:920:860:5d00 -s -t -w 120 UEFs/Baron_E.uef ROMs/Baron-1.rom ROMs/Baron-2.rom
./UEF2ROM.py -a -c e00 -w 39f UEFs/BarBilliards_E.uef ROMs/BarBilliards.rom
./UEF2ROM.py -a -c :/x:x:x: -s -t -w d3f:ef97 UEFs/BeachHead_E.uef ROMs/BeachHead-1.rom ROMs/BeachHead-2.rom
./UEF2ROM.py -a -t -w 39f UEFs/BloodOfTheMutineers_E.uef ROMs/BloodOfTheMutineers-1.rom ROMs/BloodOfTheMutineers-2.rom
./UEF2ROM.py -a -c :/: -m -r -s UEFs/Boffin2-modified_BE.uef ROMs/Boffin2-1.rom ROMs/Boffin2-2.rom
./UEF2ROM.py -a -c x::x -t -w d3f -x UEFs/Mega_Games_Cartridge/BoneCruncher-patched.uef ROMs/BoneCruncher-1.rom ROMs/BoneCruncher-2.rom
./UEF2ROM.py -a -c e00:.4200 -m UEFs/Boxer.uef ROMs/Boxer.rom
./UEF2ROM.py -a -b -r -s -w 860 -t UEFs/Breakthrough_RUN_E.uef ROMs/Breakthrough-1.rom ROMs/Breakthrough-2.rom
./UEF2ROM.py -a -c e00/: -s -t UEFs/BrianJacksSuperstarChallenge_E.uef ROMs/BrianJacksSuperstarChallenge-1.rom ROMs/BrianJacksSuperstarChallenge-2.rom
./UEF2ROM.py -a -c e00:e00:5800:e00:e00/: -w 880 UEFs/BugBlast.uef ROMs/BugBlast-1.rom ROMs/BugBlast-2.rom
./UEF2ROM.py -a UEFs/Bugs_E.uef ROMs/Bugs.rom
./UEF2ROM.py -a -c e00 -m UEFs/BumbleBee_E.uef ROMs/BumbleBee.rom
./UEF2ROM.py -a -c e00:1600: -w 880 UEFs/CastleAssault_E.uef ROMs/CastleAssault.rom
./UEF2ROM.py -a -m -s UEFs/CastleFrankenstein_E.uef ROMs/CastleFrankenstein-1.rom ROMs/CastleFrankenstein-2.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-CastlemazeAdventure_E.uef ROMs/CastlemazeAdventure.rom
./UEF2ROM.py -a -c e00:.5ff0/: -m -s UEFs/CastleOfRiddles_E.uef ROMs/CastleOfRiddles-1.rom ROMs/CastleOfRiddles-2.rom
./UEF2ROM.py -a UEFs/Caterpillar-Romik_E.uef ROMs/Caterpillar.rom
./UEF2ROM.py -a -b -w 39f UEFs/CavemanCapers.uef ROMs/CavemanCapers.rom
./UEF2ROM.py -a UEFs/Centibug_E.uef ROMs/Centibug.rom
./UEF2ROM.py -a -c e00 UEFs/Chess-Acornsoft_E.uef ROMs/Chess-Acornsoft.rom
./UEF2ROM.py -a -m UEFs/Chess-Micropower_E.uef ROMs/Chess-Micropower.rom
./UEF2ROM.py -a -m UEFs/Chess-Superior_BE.uef ROMs/Chess-Superior.rom
./UEF2ROM.py -a -b -m UEFs/ChuckieEgg_E.uef ROMs/ChuckieEgg.rom
./UEF2ROM.py -a -b -m -s UEFs/Citadel-PIASRR_E.uef ROMs/Citadel-1.rom ROMs/Citadel-2.rom
./UEF2ROM.py -a -c :/: -m -r -s UEFs/ClassicAdventure_RUN_BE.uef ROMs/ClassicAdventure-1.rom ROMs/ClassicAdventure-2.rom
./UEF2ROM.py -a -m -r -s UEFs/Mega_Games_Cartridge/CodenameDroid-patched.uef ROMs/CodenameDroid-1.rom ROMs/CodenameDroid-2.rom
./UEF2ROM.py -a -w 39f UEFs/ConditionRed_E.uef ROMs/ConditionRed.rom
./UEF2ROM.py -a -c e00:e00 UEFs/CosmicCamouflage_Tape.uef ROMs/CosmicCamouflage.rom
./UEF2ROM.py -a -c e00::::::x/x -s -t -w d3f:ef97 UEFs/CrazeeRider_E.uef ROMs/CrazeeRider-1.rom ROMs/CrazeeRider-2.rom
./UEF2ROM.py -a -c e00:.4543 -m UEFs/CrazyTracer_E.uef ROMs/CrazyTracer.rom
./UEF2ROM.py -a -c e00 -m UEFs/CreepyCave_BE.uef ROMs/CreepyCave.rom
./UEF2ROM.py -a UEFs/Croaker_E.uef ROMs/Croaker.rom
./UEF2ROM.py -a -p -t -w 39f UEFs/CrystalCastles_E.uef ROMs/CrystalCastles-1.rom ROMs/CrystalCastles-2.rom
./UEF2ROM.py -a -c : UEFs/CybertronMission_Tape.uef ROMs/CybertronMission.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/CylonAttack_E.uef ROMs/CylonAttack-1.rom ROMs/CylonAttack-2.rom
./UEF2ROM.py -a -c e00:1500: UEFs/DangerUXB_Tape.uef ROMs/DangerUXB.rom
./UEF2ROM.py -a -b UEFs/DareDevilDenis.uef ROMs/DareDevilDenis.rom
./UEF2ROM.py -a -b -w 1000 UEFs/DeathStar.uef ROMs/DeathStar.rom
./UEF2ROM.py -a -c e00::x:x/: -s -w 39f UEFs/DenisThroughTheDrinkingGlass_E.uef ROMs/DenisThroughTheDrinkingGlass-1.rom ROMs/DenisThroughTheDrinkingGlass-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/DespatchRider_E.uef ROMs/DespatchRider.rom
./UEF2ROM.py -a -c :1600::1600 -m UEFs/DiamondMine-MRM_E.uef ROMs/DiamondMine.rom
./UEF2ROM.py -a -c e00: -w 39f UEFs/DiamondMine2-BlueRibbon_E.uef ROMs/DiamondMine2.rom
./UEF2ROM.py -a -c e00:1600:5bc0:x:x -m UEFs/Dominoes_E.uef ROMs/Dominoes.rom
./UEF2ROM.py -a -c e00:x:x -w 39f UEFs/DrainMania.uef ROMs/DrainMania-1.rom ROMs/DrainMania-2.rom
./UEF2ROM.py -a -c e00 UEFs/DAR-Draughts_E.uef ROMs/Draughts-Acornsoft.rom
./UEF2ROM.py -a -m UEFs/Draughts-ComputerConcepts_BE.uef ROMs/Draughts-ComputerConcepts.rom
./UEF2ROM.py -a UEFs/Draughts-Superior_E.uef ROMs/Draughts-Superior.rom
./UEF2ROM.py -a -c e00: -m UEFs/ElectronInvaders_E.uef ROMs/ElectronInvaders.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Elite-SRR_E.uef ROMs/Elite-1.rom ROMs/Elite-2.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/Elixir_E.uef ROMs/Elixir-1.rom ROMs/Elixir-2.rom
./UEF2ROM.py -a -c : -m UEFs/Empire_BE.uef ROMs/Empire.rom
./UEF2ROM.py -a -c : -m UEFs/Enigma_E.uef ROMs/Enigma.rom
./UEF2ROM.py -a -c :::e00 UEFs/EMBA.uef ROMs/EMBA.rom
./UEF2ROM.py -a UEFs/Erbert_E.uef ROMs/Erbert.rom
./UEF2ROM.py -a -c :/: -m -s UEFs/EyeOfZolton_BE.uef ROMs/EyeOfZolton-1.rom ROMs/EyeOfZolton-2.rom
./UEF2ROM.py -a -c ::x -m UEFs/FelixAndTheFruitMonsters_E.uef ROMs/FelixAndTheFruitMonsters.rom
./UEF2ROM.py -a -c e00::x -m UEFs/FelixInTheFactory_E.uef ROMs/FelixInTheFactory.rom
./UEF2ROM.py -a -c e00 -m UEFs/FelixMeetsTheEvilWeevils_E.uef ROMs/FelixMeetsTheEvilWeevils.rom
./UEF2ROM.py -a -c e00:.5700 -m UEFs/Firebug_E.uef ROMs/Firebug.rom
./UEF2ROM.py -a -c e00:::::c00:600/315b -t -w 880 -s UEFs/Firetrack_E.uef ROMs/Firetrack-1.rom ROMs/Firetrack-2.rom
./UEF2ROM.py -a -b -s UEFs/Frak_Tape.uef ROMs/Frak-1.rom ROMs/Frak-2.rom
./UEF2ROM.py -a -c e00:1900:e00:e00:::::e00 -p -s -w 39f UEFs/Frankenstein2000_E.uef ROMs/Frankenstein2000.rom
./UEF2ROM.py -a -c e00:.21bb/: -m -s UEFs/Freefall_E.uef ROMs/Freefall-1.rom ROMs/Freefall-2.rom
./UEF2ROM.py -a -c e00: -m UEFs/Frenzy_E.uef ROMs/Frenzy.rom
./UEF2ROM.py -a -c :::x -t -w d3f:ef97 UEFs/Galaforce_E.uef ROMs/Galaforce-1.rom ROMs/Galaforce-2.rom
./UEF2ROM.py -a -c e00:e00/: -m -s UEFs/Gauntlet_E.uef ROMs/Gauntlet-1.rom ROMs/Gauntlet-2.rom
./UEF2ROM.py -a -c e00:2200:/: -p -s -w 39f -f 3-5 UEFs/Ghouls-PIASRR_E.uef ROMs/Ghouls-1.rom ROMs/Ghouls-2.rom
./UEF2ROM.py -a -s -w 39f UEFs/GisburnesCastle_E.uef ROMs/GisburnesCastle-1.rom ROMs/GisburnesCastle-2.rom
./UEF2ROM.py -a -c e00:.13b2 -m UEFs/Go_E.uef ROMs/Go.rom
./UEF2ROM.py -a -c e00:e00:x -w 39f -t UEFs/Guardian_E.uef ROMs/Guardian.rom
./UEF2ROM.py -a -c e00:c00:e00:5bc0/900:b00:5800 -m -s UEFs/Gunfighter_BE.uef ROMs/Gunfighter-1.rom ROMs/Gunfighter-2.rom
./UEF2ROM.py -a -c : UEFs/Gunsmoke_E.uef ROMs/Gunsmoke.rom
./UEF2ROM.py -a -c e00/: -t -s -w 39f UEFs/Gyroscope_E.uef ROMs/Gyroscope-1.rom ROMs/Gyroscope-2.rom
./UEF2ROM.py -a -c : -m -r UEFs/Hex_RUN_BE.uef ROMs/Hex.rom
./UEF2ROM.py -a -m -s UEFs/Hampstead_BE.uef ROMs/Hampstead-1.rom ROMs/Hampstead-2.rom
./UEF2ROM.py -a -c :5d00:::1ec0::900 -m UEFs/Hobgoblin_E.uef ROMs/Hobgoblin.rom
./UEF2ROM.py -a -c :::::57d0/: -m -s UEFs/Hobgoblin2_E.uef ROMs/Hobgoblin2-1.rom ROMs/Hobgoblin2-2.rom
./UEF2ROM.py -a -b -w 860 UEFs/HorseRace.uef ROMs/HorseRace.rom
./UEF2ROM.py -a -m UEFs/Hunchback-Ocean_E.uef ROMs/Hunchback.rom
./UEF2ROM.py -a -b -m UEFs/Hunkidory_BE.uef ROMs/Hunkidory-1.rom ROMs/Hunkidory-2.rom
./UEF2ROM.py -a -c e00::x:/: -m -s UEFs/Impact.uef ROMs/Impact-1.rom ROMs/Impact-2.rom
./UEF2ROM.py -a -c :x:x:x/x -s -t -w d3f:ef97 UEFs/ImpossibleMission_E.uef ROMs/ImpossibleMission-1.rom ROMs/ImpossibleMission-2.rom
./UEF2ROM.py -a -c e00:6980:8c0/: -m -s UEFs/Inertia_E.uef ROMs/Inertia-1.rom ROMs/Inertia-2.rom
./UEF2ROM.py -a -c e00::x -w 39f -t -s UEFs/JetBootJack_E.uef ROMs/JetBootJack-1.rom ROMs/JetBootJack-2.rom
./UEF2ROM.py -a -c : -p -s -w 39f UEFs/Mega_Games_Cartridge/Joey-patched.uef ROMs/Joey.rom
./UEF2ROM.py -a -c e00 -m UEFs/Joust.uef ROMs/Joust.rom
./UEF2ROM.py -a -b -m UEFs/JungleJive_Tape.uef ROMs/JungleJive.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/KarateCombat.uef ROMs/KarateCombat-1.rom ROMs/KarateCombat-2.rom
./UEF2ROM.py -a -c x:/: -s -w 39f UEFs/Kayleth_E.uef ROMs/Kayleth-1.rom ROMs/Kayleth-2.rom
./UEF2ROM.py -a -c e00: UEFs/KillerGorilla.uef ROMs/KillerGorilla.rom
./UEF2ROM.py -a -c :/: -s -w 39f UEFs/KillerGorilla2-PIAS_E.uef ROMs/KillerGorilla2-1.rom ROMs/KillerGorilla2-2.rom
./UEF2ROM.py -a -m -s UEFs/KingdomOfKlein_E.uef ROMs/KingdomOfKlein-1.rom ROMs/KingdomOfKlein-2.rom
./UEF2ROM.py -a -c e00::x:x -w 120 -s -t UEFs/KissinCousins_E.uef ROMs/KissinCousins-1.rom ROMs/KissinCousins-2.rom
./UEF2ROM.py -a -b -r -s -m UEFs/LastOfTheFree.uef ROMs/LastOfTheFree-1.rom ROMs/LastOfTheFree-2.rom
./UEF2ROM.py -a -b -p -w 39f UEFs/LocksOfLuck_E.uef ROMs/LocksOfLuck-1.rom ROMs/LocksOfLuck-2.rom
./UEF2ROM.py -a -c e00:1300/: -m -s UEFs/Locomotion_E.uef ROMs/Locomotion-1.rom ROMs/Locomotion-2.rom
./UEF2ROM.py -a -c ::x:/: -m UEFs/Loopz_E.uef ROMs/Loopz-1.rom ROMs/Loopz-2.rom
./UEF2ROM.py -a -b -m UEFs/LunarRescue_E.uef ROMs/LunarRescue.rom
./UEF2ROM.py -a -c e00:.4700 -m UEFs/MagicMushrooms_Tape.uef ROMs/MagicMushrooms.rom
./UEF2ROM.py -a -c e00: -m UEFs/Maze_E.uef ROMs/Maze.rom
./UEF2ROM.py -a -b UEFs/Meteors_E.uef ROMs/Meteors.rom
./UEF2ROM.py -a -c e00:1200:1400 -m UEFs/Microball_BE.uef ROMs/Microball.rom
./UEF2ROM.py -a -c ::::/::x -p -t -w 39f -s UEFs/Mikie_E.uef ROMs/Mikie-1.rom ROMs/Mikie-2.rom
./UEF2ROM.py -a -r -c : -f 1 UEFs/Mineshaft_RUN_E.uef ROMs/Mineshaft.rom
./UEF2ROM.py -a -c e00: -m UEFs/MissileControl_E.uef ROMs/MissileControl.rom
./UEF2ROM.py -a -c e00: -w 880 UEFs/Monsters.uef ROMs/Monsters.rom
./UEF2ROM.py -a -c e00:1400 -w 39f UEFs/MoonBuggy.uef ROMs/MoonBuggy.rom
./UEF2ROM.py -a -c :b00 -m UEFs/MoonRaider_E.uef ROMs/MoonRaider.rom
./UEF2ROM.py -a -c e00:/: -m -s UEFs/MouseTrap_E.uef ROMs/MouseTrap-1.rom ROMs/MouseTrap-2.rom
./UEF2ROM.py -a -c e00::x: -p -s -w 39f UEFs/MrWiz.uef ROMs/MrWiz.rom
./UEF2ROM.py -a -c e00::::/x:x: -s -t -w 39f UEFs/RHT3-Myorem_E.uef ROMs/Myorem-1.rom ROMs/Myorem-2.rom
./UEF2ROM.py -a -c e00:e00:1c00:5bc0:6980:::/1c00 -p -s -w 39f UEFs/Network-PIASRR_E.uef ROMs/Network-1.rom ROMs/Network-2.rom
./UEF2ROM.py -a -w 39f UEFs/NightmareMaze-MRM_E.uef ROMs/NightmareMaze.rom
./UEF2ROM.py -a -b UEFs/Overdrive.uef ROMs/Overdrive.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/Oxbridge_E.uef ROMs/Oxbridge-1.rom ROMs/Oxbridge-2.rom
./UEF2ROM.py -a -c e00/: -s UEFs/PalaceOfMagic_E.uef ROMs/PalaceOfMagic-1.rom ROMs/PalaceOfMagic-2.rom
./UEF2ROM.py -a -c e00::2000/: -f 1-3 -s UEFs/Mega_Games_Cartridge/PalaceOfMagic2016.uef ROMs/PalaceOfMagic2016-1.rom ROMs/PalaceOfMagic2016-2.rom
./UEF2ROM.py -a -c e00: -w 120 UEFs/Pengi_E.uef ROMs/Pengi.rom
./UEF2ROM.py -a -c :/77ad -s -t -w 39f UEFs/Perplexity_E.uef ROMs/Perplexity-1.rom ROMs/Perplexity-2.rom
./UEF2ROM.py -a -b -m -s UEFs/PhilosophersQuest_E.uef ROMs/PhilosophersQuest-1.rom ROMs/PhilosophersQuest-2.rom
./UEF2ROM.py -a -c : -m UEFs/PhilosophersStone_BE.uef ROMs/PhilosophersStone.rom
./UEF2ROM.py -a -c ::x:x -w 120 UEFs/Pinball.uef ROMs/Pinball.rom
./UEF2ROM.py -a -m -r -s UEFs/Mega_Games_Cartridge/Pipeline-patched.uef ROMs/Pipeline-1.rom ROMs/Pipeline-2.rom
./UEF2ROM.py -a -b -m -r -s UEFs/Pipemania_E.uef ROMs/Pipemania-1.rom ROMs/Pipemania-2.rom
./UEF2ROM.py -a -c :2000 -m UEFs/PlanB_BE.uef ROMs/PlanB.rom
./UEF2ROM.py -a -c e00 UEFs/PlanB2_BE.uef ROMs/PlanB2.rom
./UEF2ROM.py -a -c e00: -m UEFs/Planetoid_E.uef ROMs/Planetoid.rom
./UEF2ROM.py -a -c e00 -m UEFs/Podd_BE.uef ROMs/Podd.rom
./UEF2ROM.py -a -b -m UEFs/Positron_E.uef ROMs/Positron.rom
./UEF2ROM.py -a -s UEFs/Predator_E.uef ROMs/Predator-1.rom ROMs/Predator-2.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/RHT2-ProjectThesius_E.uef ROMs/ProjectThesius-1.rom ROMs/ProjectThesius-2.rom
./UEF2ROM.py -a -c e00:x:/: -w 39f -s -t UEFs/Psycastria_E.uef ROMs/Psycastria-1.rom ROMs/Psycastria-2.rom
./UEF2ROM.py -a -c : -m -r UEFs/PuppetMan_RUN_BE.uef ROMs/PuppetMan.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Quest.uef ROMs/Quest-1.rom ROMs/Quest-2.rom
./UEF2ROM.py -a -m -s UEFs/QuestForFreedom_E.uef ROMs/QuestForFreedom-1.rom ROMs/QuestForFreedom-2.rom
./UEF2ROM.py -a -m -s UEFs/QuestForTheHolyGrail_E.uef ROMs/QuestForTheHolyGrail-1.rom ROMs/QuestForTheHolyGrail-2.rom
./UEF2ROM.py -a -c :e00:::1400/: -s UEFs/Qwak_E.uef ROMs/Qwak-1.rom ROMs/Qwak-2.rom
./UEF2ROM.py -a -c : -m UEFs/Ravage_E.uef ROMs/Ravage.rom
./UEF2ROM.py -a -c x:::x:/: -m -r -s UEFs/Mega_Games_Cartridge/Ravenskull-patched.uef ROMs/Ravenskull-1.rom ROMs/Ravenskull-2.rom
./UEF2ROM.py -a -c e00:/: -s -w 39f UEFs/RebelPlanet_E.uef ROMs/RebelPlanet-1.rom ROMs/RebelPlanet-2.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Repton.uef ROMs/Repton-1.rom ROMs/Repton-2.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Repton2.uef ROMs/Repton2-1.rom ROMs/Repton2-2.rom
./UEF2ROM.py -a -c e00:/: -f 4-6:12-13 -s UEFs/Repton3_E.uef ROMs/Repton3-1.rom ROMs/Repton3-2.rom
./UEF2ROM.py -a -c e00 UEFs/DAR-Reversi_E.uef ROMs/Reversi.rom
./UEF2ROM.py -a -b -m UEFs/Reversi-Superior_E.uef ROMs/Reversi-Superior.rom
./UEF2ROM.py -a -c e00:/: -s -t -w 39f UEFs/RHT1-RickHanson_E.uef ROMs/RickHanson-1.rom ROMs/RickHanson-2.rom
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
./UEF2ROM.py -a -c e00 -m UEFs/Skirmish_E.uef ROMs/Skirmish.rom
./UEF2ROM.py -a -c e00::5000 UEFs/SmashAndGrab_E.uef ROMs/SmashAndGrab.rom
./UEF2ROM.py -a -c e00::.2f8a -m UEFs/Snooker-Acornsoft_E.uef ROMs/Snooker.rom
./UEF2ROM.py -a -s -t -w d3f:ef97 UEFs/SpaceAgentZeldaMeetsTheBugEyes_E.uef ROMs/SpaceAgentZeldaMeetsTheBugEyes-1.rom ROMs/SpaceAgentZeldaMeetsTheBugEyes-2.rom
./UEF2ROM.py -a -c e00::x -s -t UEFs/SpacemanSid_E.uef ROMs/SpacemanSid-1.rom ROMs/SpacemanSid-2.rom
./UEF2ROM.py -a -c e00:/: -m UEFs/Mega_Games_Cartridge/SpaceRanger-patched.uef ROMs/SpaceRanger.rom
./UEF2ROM.py -a -c e00:x:/: -s -t -w 39f UEFs/SphereOfDestiny_E.uef ROMs/SphereOfDestiny-1.rom ROMs/SphereOfDestiny-2.rom
./UEF2ROM.py -a -c e00:.5775/: -m -s UEFs/SphinxAdventure_E.uef ROMs/SphinxAdventure-1.rom ROMs/SphinxAdventure-2.rom
./UEF2ROM.py -a -c :/: -f 3-6 -m -r -s UEFs/SpyCat_E.uef ROMs/SpyCat-1.rom ROMs/SpyCat-2.rom
./UEF2ROM.py -a -c x::x:/: -p -s -w 39f -x UEFs/Mega_Games_Cartridge/SpyVsSpy-patched.uef ROMs/SpyVsSpy-1.rom ROMs/SpyVsSpy-2.rom
./UEF2ROM.py -a -c e00:3780:900:2000/7620 -m -s UEFs/StarWars_E.uef ROMs/StarWars-1.rom ROMs/StarWars-2.rom
./UEF2ROM.py -a -c :e00::e00/: UEFs/SteveDavisSnooker-PIASRR_E.uef ROMs/SteveDavisSnooker.rom
./UEF2ROM.py -a -c e00:e00 UEFs/StockCar.uef ROMs/StockCar.rom
./UEF2ROM.py -a -c :e00/: -s -t UEFs/Stormcycle_E.uef ROMs/Stormcycle-1.rom ROMs/Stormcycle-2.rom
./UEF2ROM.py -a -c e00: -w 39f -t UEFs/Stranded_E.uef ROMs/Stranded.rom
./UEF2ROM.py -a -c e00:e00:3a00/: -s -t -w 860 UEFs/StrykersRun-PIASRR_E.uef ROMs/StrykersRun-1.rom ROMs/StrykersRun-2.rom
./UEF2ROM.py -a -c e00:e00:/400 -m -s UEFs/SupermanTheGame_BE.uef ROMs/SupermanTheGame-1.rom ROMs/SupermanTheGame-2.rom
./UEF2ROM.py -a -c e00 -m UEFs/SuperPool_E.uef ROMs/SuperPool.rom
./UEF2ROM.py -a -c e00 -t -w 39f UEFs/Survivors_BE.uef ROMs/Survivors.rom
./UEF2ROM.py -a -b -m UEFs/Swag_E.uef ROMs/Swag-1.rom ROMs/Swag-2.rom
./UEF2ROM.py -a -b -m UEFs/Swoop_E.uef ROMs/Swoop.rom
./UEF2ROM.py -a -c e00:1900/: -s UEFs/Syncron_E.uef ROMs/Syncron-1.rom ROMs/Syncron-2.rom
./UEF2ROM.py -a -c : -m UEFs/TalesOfTheArabianNights_E.uef ROMs/TalesOfTheArabianNights.rom
./UEF2ROM.py -a -c e00 -p -w 39f UEFs/Tempest_E.uef ROMs/Tempest.rom
./UEF2ROM.py -a -m -r -s -f 3-6 UEFs/Terrormolinos_BE.uef ROMs/Terrormolinos-1.rom ROMs/Terrormolinos-2.rom
./UEF2ROM.py -a -c e00:2f00:5800:1200 -m UEFs/Tetris_BE.uef ROMs/Tetris.rom
./UEF2ROM.py -a -c :4000: -m UEFs/TheMine_E.uef ROMs/TheMine.rom
./UEF2ROM.py -a -c : -m -r UEFs/TheNineDancers_RUN_BE.uef ROMs/TheNineDancers.rom
./UEF2ROM.py -a -c e00:/: -s UEFs/Thrust_Tape.uef ROMs/Thrust-1.rom ROMs/Thrust-2.rom
./UEF2ROM.py -a -c ::::x:/: -r -s -w 39f UEFs/Thunderstruck_E.uef ROMs/Thunderstruck-1.rom ROMs/Thunderstruck-2.rom
./UEF2ROM.py -a -c x:/: -m -r -s UEFs/Thunderstruck2_E.uef ROMs/Thunderstruck2-1.rom ROMs/Thunderstruck2-2.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-TunnelAdventure_E.uef ROMs/TunnelAdventure.rom
./UEF2ROM.py -a -c e00::e00:/: -m -s UEFs/TwinKingdomValley-modified_E.uef ROMs/TwinKingdomValley-1.rom ROMs/TwinKingdomValley-2.rom
./UEF2ROM.py -a -b -s -l UEFs/TwelfthNight-Electron.uef ROMs/TwelfthNight-1.rom ROMs/TwelfthNight-2.rom
./UEF2ROM.py -a -m -r UEFs/Ultron_E.uef ROMs/Ultron.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-UndegroundAdventure_E.uef ROMs/UndegroundAdventure.rom
./UEF2ROM.py -a -c :/: -w 120 UEFs/VideosRevenge-PIASRR_E.uef ROMs/VideosRevenge-1.rom ROMs/VideosRevenge-2.rom
./UEF2ROM.py -a -c e00::b00:10d0:2f30/658 -s -m UEFs/VillageOfLostSouls-RR_E.uef ROMs/Village-1.rom ROMs/Village-2.rom
./UEF2ROM.py -a -b -m -r -s UEFs/West_RUN_E.uef ROMs/West-1.rom ROMs/West-2.rom
./UEF2ROM.py -a -b -s -m UEFs/WheelOfFortune_E.uef ROMs/WheelOfFortune-1.rom ROMs/WheelOfFortune-2.rom
./UEF2ROM.py -a -c : -m UEFs/Where_E.uef ROMs/Where.rom
./UEF2ROM.py -a -c e00:e00 -m UEFs/WhiteKnightMk11_E.uef ROMs/WhiteKnightMk11.rom
./UEF2ROM.py -a -c : -m -r UEFs/Wychwood_RUN_BE.uef ROMs/Wychwood.rom
./UEF2ROM.py -a -c :::x -s -t -w d3f:ef97 UEFs/XOR_E.uef ROMs/XOR-1.rom ROMs/XOR-2.rom
./UEF2ROM.py -a -c e00:5300:500:1100/:x:5f80 -f 1-7 -p -s -t -w 39f UEFs/YieArKungFu_E.uef ROMs/YieArKungFu-1.rom ROMs/YieArKungFu-2.rom
./UEF2ROM.py -a -c :/: -f 3 -r -s UEFs/Zalaga-PIASRR_E.uef ROMs/Zalaga-1.rom ROMs/Zalaga-2.rom
./UEF2ROM.py -a -c e00 UEFs/ZanyKongJunior_E.uef ROMs/ZanyKongJunior.rom
./UEF2ROM.py -a -c :5800:/: -m -s UEFs/Zenon_E.uef ROMs/Zenon-1.rom ROMs/Zenon-2.rom
./UEF2ROM.py -a -c :/: -m -s -f 0-1 UEFs/Ziggy_E.uef ROMs/Ziggy-1.rom ROMs/Ziggy-2.rom
