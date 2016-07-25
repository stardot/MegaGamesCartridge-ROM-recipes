#!/bin/sh

set -e

./UEF2ROM.py -a UEFs/3DDotty_E.uef ROMs/3DDotty.rom
./UEF2ROM.py -a -b -m -s UEFs/3DPool_E.uef ROMs/3DPool-1.rom ROMs/3DPool-2.rom
./UEF2ROM.py -a -b UEFs/Adventure-Micropower_E.uef ROMs/Adventure-Micropower.rom
./UEF2ROM.py -a UEFs/AlienBreakIn_E.uef ROMs/AlienBreakIn-1.rom
./UEF2ROM.py -a -b -m -s UEFs/Arcadians.uef ROMs/Arcadians-1.rom ROMs/Arcadians-2.rom
./UEF2ROM.py -a -b -w 39f UEFs/AstroPlumber_E.uef ROMs/AstroPlumber.rom
./UEF2ROM.py -a -b UEFs/BarBilliards_E.uef ROMs/BarBilliards.rom
./UEF2ROM.py -a -s -t -w d3f:ef97 UEFs/BeachHead_E.uef ROMs/BeachHead-1.rom ROMs/BeachHead-2.rom
./UEF2ROM.py -a -t -w 39f UEFs/BloodOfTheMutineers_E.uef ROMs/BloodOfTheMutineers-1.rom ROMs/BloodOfTheMutineers-2.rom
./UEF2ROM.py -a -b -r -m -s UEFs/Boffin2-modified_BE.uef ROMs/Boffin2-1.rom ROMs/Boffin2-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Boxer.uef ROMs/Boxer-1.rom ROMs/Boxer-2.rom
./UEF2ROM.py -a -b -r -s -w 860 -t UEFs/Breakthrough_RUN_E.uef ROMs/Breakthrough-1.rom ROMs/Breakthrough-2.rom
./UEF2ROM.py -a -s -t UEFs/BrianJacksSuperstarChallenge_E.uef ROMs/BrianJacksSuperstarChallenge-1.rom ROMs/BrianJacksSuperstarChallenge-2.rom
./UEF2ROM.py -a -b -w 880 UEFs/BugBlast.uef ROMs/BugBlast-1.rom ROMs/BugBlast-2.rom
./UEF2ROM.py -a UEFs/Bugs_E.uef ROMs/Bugs.rom
./UEF2ROM.py -a -b -s -m UEFs/BumbleBee_E.uef ROMs/BumbleBee-1.rom ROMs/BumbleBee-2.rom
./UEF2ROM.py -a -b -w 880 UEFs/CastleAssault_E.uef ROMs/CastleAssault.rom
./UEF2ROM.py -a -m -s UEFs/CastleFrankenstein_E.uef ROMs/CastleFrankenstein-1.rom ROMs/CastleFrankenstein-2.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-CastlemazeAdventure_E.uef ROMs/CastlemazeAdventure.rom
./UEF2ROM.py -a -b -s -m UEFs/CastleOfRiddles_E.uef ROMs/CastleOfRiddles-1.rom ROMs/CastleOfRiddles-2.rom
./UEF2ROM.py -a UEFs/Caterpillar-Romik_E.uef ROMs/Caterpillar.rom
./UEF2ROM.py -a -b -w 39f UEFs/CavemanCapers.uef ROMs/CavemanCapers.rom
./UEF2ROM.py -a UEFs/Centibug_E.uef ROMs/Centibug.rom
./UEF2ROM.py -a -s UEFs/Chess-Acornsoft_E.uef ROMs/Chess-Acornsoft-1.rom ROMs/Chess-Acornsoft-2.rom
./UEF2ROM.py -a -m UEFs/Chess-Micropower_E.uef ROMs/Chess-Micropower.rom
./UEF2ROM.py -a -m UEFs/Chess-Superior_BE.uef ROMs/Chess-Superior.rom
./UEF2ROM.py -a -b -m UEFs/ChuckieEgg_E.uef ROMs/ChuckieEgg.rom
./UEF2ROM.py -a -b -m -s UEFs/Citadel-PIASRR_E.uef ROMs/Citadel-1.rom ROMs/Citadel-2.rom
./UEF2ROM.py -a -m -r -s UEFs/ClassicAdventure_RUN_BE.uef ROMs/ClassicAdventure-1.rom ROMs/ClassicAdventure-2.rom
./UEF2ROM.py -a -w 39f UEFs/ConditionRed_E.uef ROMs/ConditionRed.rom
./UEF2ROM.py -a -b UEFs/CosmicCamouflage_Tape.uef ROMs/CosmicCamouflage-1.rom ROMs/CosmicCamouflage-2.rom
./UEF2ROM.py -a -b -m UEFs/CrazyTracer_E.uef ROMs/CrazyTracer.rom
./UEF2ROM.py -a -m UEFs/CreepyCave_BE.uef ROMs/CreepyCave-1.rom ROMs/CreepyCave-2.rom
./UEF2ROM.py -a UEFs/Croaker_E.uef ROMs/Croaker.rom
./UEF2ROM.py -a -p -t -w 39f UEFs/CrystalCastles_E.uef ROMs/CrystalCastles-1.rom ROMs/CrystalCastles-2.rom
./UEF2ROM.py -a -b UEFs/CybertronMission_Tape.uef ROMs/CybertronMission.rom
./UEF2ROM.py -a -m -s UEFs/CylonAttack_E.uef ROMs/CylonAttack-1.rom ROMs/CylonAttack-2.rom
./UEF2ROM.py -a -b UEFs/DangerUXB_Tape.uef ROMs/DangerUXB.rom
./UEF2ROM.py -a -b UEFs/DareDevilDenis.uef ROMs/DareDevilDenis.rom
./UEF2ROM.py -a -b -w 1000 UEFs/DeathStar.uef ROMs/DeathStar.rom
./UEF2ROM.py -a -s UEFs/DenisThroughTheDrinkingGlass_E.uef ROMs/DenisThroughTheDrinkingGlass-1.rom ROMs/DenisThroughTheDrinkingGlass-2.rom
./UEF2ROM.py -a -m UEFs/DespatchRider_E.uef ROMs/DespatchRider-1.rom ROMs/DespatchRider-2.rom
./UEF2ROM.py -a -m UEFs/DiamondMine-MRM_E.uef ROMs/DiamondMine.rom
./UEF2ROM.py -a -w 39f UEFs/DiamondMine2-BlueRibbon_E.uef ROMs/DiamondMine2.rom
./UEF2ROM.py -a -m UEFs/Dominoes_E.uef ROMs/Dominoes.rom
./UEF2ROM.py -a -b -w 39f UEFs/DrainMania.uef ROMs/DrainMania-1.rom ROMs/DrainMania-2.rom
./UEF2ROM.py -a UEFs/DAR-Draughts_E.uef ROMs/Draughts-Acornsoft.rom
./UEF2ROM.py -a -m UEFs/Draughts-ComputerConcepts_BE.uef ROMs/Draughts-ComputerConcepts.rom
./UEF2ROM.py -a UEFs/Draughts-Superior_E.uef ROMs/Draughts-Superior.rom
./UEF2ROM.py -a -m UEFs/ElectronInvaders_E.uef ROMs/ElectronInvaders.rom
./UEF2ROM.py -a -b -s UEFs/Elite-SRR_E.uef ROMs/Elite-1.rom ROMs/Elite-2.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/Elixir_E.uef ROMs/Elixir-1.rom ROMs/Elixir-2.rom
./UEF2ROM.py -a -m UEFs/Empire_BE.uef ROMs/Empire.rom
./UEF2ROM.py -a -m UEFs/Enigma_E.uef ROMs/Enigma.rom
./UEF2ROM.py -a -b UEFs/EMBA.uef ROMs/EMBA.rom
./UEF2ROM.py -a UEFs/Erbert_E.uef ROMs/Erbert.rom
./UEF2ROM.py -a -m -s UEFs/EyeOfZolton_BE.uef ROMs/EyeOfZolton-1.rom ROMs/EyeOfZolton-2.rom
./UEF2ROM.py -a -m UEFs/FelixAndTheFruitMonsters_E.uef ROMs/FelixAndTheFruitMonsters.rom
./UEF2ROM.py -a -m UEFs/FelixInTheFactory_E.uef ROMs/FelixInTheFactory.rom
./UEF2ROM.py -a -m UEFs/FelixMeetsTheEvilWeevils_E.uef ROMs/FelixMeetsTheEvilWeevils-1.rom ROMs/FelixMeetsTheEvilWeevils-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Firebug_E.uef ROMs/Firebug-1.rom ROMs/Firebug-2.rom
./UEF2ROM.py -a -b -t -w 880 -s UEFs/Firetrack_E.uef ROMs/Firetrack-1.rom ROMs/Firetrack-2.rom
./UEF2ROM.py -a -b -s UEFs/Frak_Tape.uef ROMs/Frak-1.rom ROMs/Frak-2.rom
./UEF2ROM.py -a -p -s -w 39f UEFs/Frankenstein2000_E.uef ROMs/Frankenstein2000-1.rom ROMs/Frankenstein2000-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Freefall_E.uef ROMs/Freefall-1.rom ROMs/Freefall-2.rom
./UEF2ROM.py -a -m UEFs/Frenzy_E.uef ROMs/Frenzy.rom
./UEF2ROM.py -a -t -w d3f:ef97 UEFs/Galaforce_E.uef ROMs/Galaforce-1.rom ROMs/Galaforce-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Gauntlet_E.uef ROMs/Gauntlet-1.rom ROMs/Gauntlet-2.rom
./UEF2ROM.py -a -s -w 39f UEFs/GisburnesCastle_E.uef ROMs/GisburnesCastle-1.rom ROMs/GisburnesCastle-2.rom
./UEF2ROM.py -a -b -m UEFs/Go_E.uef ROMs/Go-1.rom ROMs/Go-2.rom
./UEF2ROM.py -a -b -w 39f -t UEFs/Guardian_E.uef ROMs/Guardian.rom
./UEF2ROM.py -a -m -s UEFs/Gunfighter_BE.uef ROMs/Gunfighter-1.rom ROMs/Gunfighter-2.rom
./UEF2ROM.py -a UEFs/Gunsmoke_E.uef ROMs/Gunsmoke-1.rom ROMs/Gunsmoke-2.rom
./UEF2ROM.py -a -t -s -w 39f UEFs/Gyroscope_E.uef ROMs/Gyroscope-1.rom ROMs/Gyroscope-2.rom
./UEF2ROM.py -a -m -s UEFs/Hampstead_BE.uef ROMs/Hampstead-1.rom ROMs/Hampstead-2.rom
./UEF2ROM.py -a -m -s UEFs/Hobgoblin_E.uef ROMs/Hobgoblin-1.rom ROMs/Hobgoblin-2.rom
./UEF2ROM.py -a -m -s UEFs/Hobgoblin2_E.uef ROMs/Hobgoblin2-1.rom ROMs/Hobgoblin2-2.rom
./UEF2ROM.py -a -b -w 860 UEFs/HorseRace.uef ROMs/HorseRace.rom
./UEF2ROM.py -a -m UEFs/Hunchback-Ocean_E.uef ROMs/Hunchback.rom
./UEF2ROM.py -a -b -m UEFs/Hunkidory_BE.uef ROMs/Hunkidory-1.rom ROMs/Hunkidory-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Impact.uef ROMs/Impact-1.rom ROMs/Impact-2.rom
./UEF2ROM.py -a -s -t -w d3f:ef97 UEFs/ImpossibleMission_E.uef ROMs/ImpossibleMission-1.rom ROMs/ImpossibleMission-2.rom
./UEF2ROM.py -a -b -w 39f -t -s UEFs/JetBootJack_E.uef ROMs/JetBootJack-1.rom ROMs/JetBootJack-2.rom
./UEF2ROM.py -a -b -m UEFs/Joust.uef ROMs/Joust-1.rom ROMs/Joust-2.rom
./UEF2ROM.py -a -b -m UEFs/JungleJive_Tape.uef ROMs/JungleJive.rom
./UEF2ROM.py -a -b -s UEFs/KarateCombat.uef ROMs/KarateCombat-1.rom ROMs/KarateCombat-2.rom
./UEF2ROM.py -a -s -w 39f UEFs/Kayleth_E.uef ROMs/Kayleth-1.rom ROMs/Kayleth-2.rom
./UEF2ROM.py -a -b UEFs/KillerGorilla.uef ROMs/KillerGorilla.rom
./UEF2ROM.py -a -s -w 39f UEFs/KillerGorilla2-PIAS_E.uef ROMs/KillerGorilla2-1.rom ROMs/KillerGorilla2-2.rom
./UEF2ROM.py -a -m -s UEFs/KingdomOfKlein_E.uef ROMs/KingdomOfKlein-1.rom ROMs/KingdomOfKlein-2.rom
./UEF2ROM.py -a -b -w 120 -s -t UEFs/KissinCousins_E.uef ROMs/KissinCousins-1.rom ROMs/KissinCousins-2.rom
./UEF2ROM.py -a -b -r -s -m UEFs/LastOfTheFree.uef ROMs/LastOfTheFree-1.rom ROMs/LastOfTheFree-2.rom
./UEF2ROM.py -a -b -p -w 39f UEFs/LocksOfLuck_E.uef ROMs/LocksOfLuck-1.rom ROMs/LocksOfLuck-2.rom
./UEF2ROM.py -a -m -s UEFs/Locomotion_E.uef ROMs/Locomotion-1.rom ROMs/Locomotion-2.rom
./UEF2ROM.py -a -b -m UEFs/Loopz_E.uef ROMs/Loopz-1.rom ROMs/Loopz-2.rom
./UEF2ROM.py -a -b -m UEFs/LunarRescue_E.uef ROMs/LunarRescue.rom
./UEF2ROM.py -a -b -w 880 UEFs/MagicMushrooms_Tape.uef ROMs/MagicMushrooms.rom
./UEF2ROM.py -a -b -m UEFs/Maze_E.uef ROMs/Maze.rom
./UEF2ROM.py -a -b UEFs/Meteors_E.uef ROMs/Meteors.rom
./UEF2ROM.py -a -m UEFs/Microball_BE.uef ROMs/Microball.rom
./UEF2ROM.py -a -p -t -w 39f -s UEFs/Mikie_E.uef ROMs/Mikie-1.rom ROMs/Mikie-2.rom
./UEF2ROM.py -a -r -s UEFs/Mineshaft_RUN_E.uef ROMs/Mineshaft-1.rom ROMs/Mineshaft-2.rom
./UEF2ROM.py -a -m UEFs/MissileControl_E.uef ROMs/MissileControl.rom
./UEF2ROM.py -a -b -w 880 UEFs/Monsters.uef ROMs/Monsters.rom
./UEF2ROM.py -a -b -w 39f UEFs/MoonBuggy.uef ROMs/MoonBuggy-1.rom ROMs/MoonBuggy-2.rom
./UEF2ROM.py -a -b -m -s UEFs/MoonRaider_E.uef ROMs/MoonRaider-1.rom ROMs/MoonRaider-2.rom
./UEF2ROM.py -a -w 39f UEFs/NightmareMaze-MRM_E.uef ROMs/NightmareMaze.rom
./UEF2ROM.py -a -b UEFs/Overdrive.uef ROMs/Overdrive.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/Oxbridge_E.uef ROMs/Oxbridge-1.rom ROMs/Oxbridge-2.rom
./UEF2ROM.py -a -b -w 120 UEFs/Pengi.uef ROMs/Pengi.rom
./UEF2ROM.py -a -b -m -s UEFs/PhilosophersQuest_E.uef ROMs/PhilosophersQuest-1.rom ROMs/PhilosophersQuest-2.rom
./UEF2ROM.py -a -b -m -s UEFs/PhilosophersStone_BE.uef ROMs/PhilosophersStone-1.rom ROMs/PhilosophersStone-2.rom
./UEF2ROM.py -a -b -w 120 UEFs/Pinball.uef ROMs/Pinball.rom
./UEF2ROM.py -a -b -m -r -s UEFs/Pipemania_E.uef ROMs/Pipemania-1.rom ROMs/Pipemania-2.rom
./UEF2ROM.py -a -m -s UEFs/PlanB_BE.uef ROMs/PlanB-1.rom ROMs/PlanB-2.rom
./UEF2ROM.py -a -s UEFs/PlanB2_BE.uef ROMs/PlanB2-1.rom ROMs/PlanB2-2.rom
./UEF2ROM.py -a -m UEFs/Planetoid_E.uef ROMs/Planetoid.rom
./UEF2ROM.py -a -m UEFs/Podd_BE.uef ROMs/Podd-1.rom ROMs/Podd-2.rom
./UEF2ROM.py -a -b -m UEFs/Positron_E.uef ROMs/Positron.rom
./UEF2ROM.py -a -s UEFs/Predator_E.uef ROMs/Predator-1.rom ROMs/Predator-2.rom
./UEF2ROM.py -a -b -w 39f -s -t UEFs/Psycastria.uef ROMs/Psycastria-1.rom ROMs/Psycastria-2.rom
./UEF2ROM.py -a -b -s UEFs/Quest.uef ROMs/Quest-1.rom ROMs/Quest-2.rom
./UEF2ROM.py -a -m -s UEFs/QuestForTheHolyGrail_E.uef ROMs/QuestForTheHolyGrail-1.rom ROMs/QuestForTheHolyGrail-2.rom
./UEF2ROM.py -a -s UEFs/Qwak_E.uef ROMs/Qwak-1.rom ROMs/Qwak-2.rom
./UEF2ROM.py -a -b -m UEFs/Ravage_E.uef ROMs/Ravage.rom
./UEF2ROM.py -a -s -w 39f UEFs/RebelPlanet_E.uef ROMs/RebelPlanet-1.rom ROMs/RebelPlanet-2.rom
./UEF2ROM.py -a -b -s UEFs/Repton.uef ROMs/Repton-1.rom ROMs/Repton-2.rom
./UEF2ROM.py -a -b -s UEFs/Repton2.uef ROMs/Repton2-1.rom ROMs/Repton2-2.rom
./UEF2ROM.py -a -b -s UEFs/Repton3.uef ROMs/Repton3-1.rom ROMs/Repton3-2.rom
./UEF2ROM.py -a UEFs/DAR-Reversi_E.uef ROMs/Reversi.rom
./UEF2ROM.py -a -b -m UEFs/Reversi-Superior_E.uef ROMs/Reversi-Superior.rom
./UEF2ROM.py -a -m UEFs/RigAttack_E.uef ROMs/RigAttack.rom
./UEF2ROM.py -a -b UEFs/RubbleTrouble.uef ROMs/RubbleTrouble-1.rom ROMs/RubbleTrouble-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Saracoid.uef ROMs/Saracoid-1.rom ROMs/Saracoid-2.rom
./UEF2ROM.py -a -b UEFs/SavagePond-Starcade_E.uef ROMs/SavagePond-1.rom ROMs/SavagePond-2.rom
./UEF2ROM.py -a -b -m -s UEFs/Shark_E.uef ROMs/Shark-1.rom ROMs/Shark-2.rom
./UEF2ROM.py -a -b -m UEFs/Skirmish_E.uef ROMs/Skirmish-1.rom ROMs/Skirmish-2.rom
./UEF2ROM.py -a -b -w 880 UEFs/Sim_Tape.uef ROMs/Sim.rom
./UEF2ROM.py -a -b UEFs/SmashAndGrab.uef ROMs/SmashAndGrab.rom
./UEF2ROM.py -a -b -m UEFs/Snooker-Acornsoft_E.uef ROMs/Snooker.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/SpaceAgentZeldaMeetsTheBugEyes_E.uef ROMs/SpaceAgentZeldaMeetsTheBugEyes-1.rom ROMs/SpaceAgentZeldaMeetsTheBugEyes-2.rom
./UEF2ROM.py -a -b -t -s UEFs/SpacemanSid.uef ROMs/SpacemanSid-1.rom ROMs/SpacemanSid-2.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/SphereOfDestiny_E.uef ROMs/SphereOfDestiny-1.rom ROMs/SphereOfDestiny-2.rom
./UEF2ROM.py -a -b -s -m UEFs/SphinxAdventure_E.uef ROMs/SphinxAdventure-1.rom ROMs/SphinxAdventure-2.rom
./UEF2ROM.py -a -b UEFs/SteveDavisSnooker-PIASRR_E.uef ROMs/SteveDavisSnooker-1.rom ROMs/SteveDavisSnooker-2.rom
./UEF2ROM.py -a -b UEFs/StockCar.uef ROMs/StockCar-1.rom ROMs/StockCar-2.rom
./UEF2ROM.py -a -b -s -t UEFs/Stormcycle_E.uef ROMs/Stormcycle-1.rom ROMs/Stormcycle-2.rom
./UEF2ROM.py -a -b -w 39f -t UEFs/Stranded_E.uef ROMs/Stranded.rom
./UEF2ROM.py -a -s -t -w 860 UEFs/StrykersRun-PIASRR_E.uef ROMs/StrykersRun-1.rom ROMs/StrykersRun-2.rom
./UEF2ROM.py -a -m -s UEFs/SupermanTheGame_BE.uef ROMs/SupermanTheGame-1.rom ROMs/SupermanTheGame-2.rom
./UEF2ROM.py -a -m UEFs/SuperPool_E.uef ROMs/SuperPool.rom
./UEF2ROM.py -a -s -t -w 39f UEFs/Survivors_BE.uef ROMs/Survivors-1.rom ROMs/Survivors-2.rom
./UEF2ROM.py -a -b -m UEFs/Swag_E.uef ROMs/Swag-1.rom ROMs/Swag-2.rom
./UEF2ROM.py -a -b -m UEFs/Swoop_E.uef ROMs/Swoop.rom
./UEF2ROM.py -a -b -s UEFs/Syncron.uef ROMs/Syncron-1.rom ROMs/Syncron-2.rom
./UEF2ROM.py -a -b -m UEFs/TalesOfTheArabianNights_E.uef ROMs/TalesOfTheArabianNights-1.rom ROMs/TalesOfTheArabianNights-2.rom
./UEF2ROM.py -a UEFs/Tempest_E.uef ROMs/Tempest.rom
./UEF2ROM.py -a -b -m UEFs/Tetris_BE.uef ROMs/Tetris-1.rom ROMs/Tetris-2.rom
./UEF2ROM.py -a -m UEFs/TheMine_E.uef ROMs/TheMine.rom
./UEF2ROM.py -a -b -s UEFs/Thrust_Tape.uef ROMs/Thrust-1.rom ROMs/Thrust-2.rom
./UEF2ROM.py -a -r -s -w 39f UEFs/Thunderstruck_E.uef ROMs/Thunderstruck-1.rom ROMs/Thunderstruck-2.rom
./UEF2ROM.py -a -m -r -s UEFs/Thunderstruck2_E.uef ROMs/Thunderstruck2-1.rom ROMs/Thunderstruck2-2.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-TunnelAdventure_E.uef ROMs/TunnelAdventure.rom
./UEF2ROM.py -a -b -m -s UEFs/TwinKingdomValley-modified_E.uef ROMs/TwinKingdomValley-1.rom ROMs/TwinKingdomValley-2.rom
./UEF2ROM.py -a -b -s -l UEFs/TwelfthNight-Electron.uef ROMs/TwelfthNight-1.rom ROMs/TwelfthNight-2.rom
./UEF2ROM.py -a -m UEFs/EXPLADV-UndegroundAdventure_E.uef ROMs/UndegroundAdventure.rom
./UEF2ROM.py -a -b -w 120 UEFs/VideosRevenge.uef ROMs/VideosRevenge-1.rom ROMs/VideosRevenge-2.rom
./UEF2ROM.py -a -b -s -m UEFs/Village.uef ROMs/Village-1.rom ROMs/Village-2.rom
./UEF2ROM.py -a -b -m -r -s UEFs/West_RUN_E.uef ROMs/West-1.rom ROMs/West-2.rom
./UEF2ROM.py -a -b -s -m UEFs/WheelOfFortune_E.uef ROMs/WheelOfFortune-1.rom ROMs/WheelOfFortune-2.rom
./UEF2ROM.py -a -m UEFs/Where_E.uef ROMs/Where.rom
./UEF2ROM.py -a -m -s UEFs/WhiteKnightMk11_E.uef ROMs/WhiteKnightMk11-1.rom ROMs/WhiteKnightMk11-2.rom
./UEF2ROM.py -a -s -t -w d3f:ef97 UEFs/XOR_E.uef ROMs/XOR-1.rom ROMs/XOR-2.rom
./UEF2ROM.py -a -m -s UEFs/Zenon_E.uef ROMs/Zenon-1.rom ROMs/Zenon-2.rom
./UEF2ROM.py -a -s UEFs/Zalaga-PIASRR_E.uef ROMs/Zalaga-1.rom ROMs/Zalaga-2.rom
./UEF2ROM.py -a -b UEFs/ZanyKongJunior_E.uef ROMs/ZanyKongJunior.rom
