// best time support
timer = 100;
// tutorial support
tutorialRoom = Tutorial;
// used to enable multiple difficulties
levelDifficulty = ""
// determines if a player has found the hidden fish
leftFishFound = false;
rightFishFound = false;
// saves player variables for respawning them
swimmerOneMVSpeed = 0;
swimmerTwoMVSpeed = 0;
lightX = 0;
lightY = 0;
lightTwoX = 0;
lightTwoY = 0;
swimmerOneText = "";
swimmerTwoText = "";
swimmerOneSinglePlayer = true;
swimmerTwoSinglePlayer = true;
swimmerOneNumPollutants = 0;
swimmerTwoNumPollutants = 0;
// variables for temporarily showing text
textShouldBeShowing = true;
lifeTime = 2;
alarm[0] = 60;
// loads variables
audio_group_load(GameSounds)
audio_group_load(ButtonSounds)
audio_group_load(RoomTextSounds)
audio_group_load(TrainerSounds)
rooms = 
[0,0,0,
0,0,0,
LevelThreeEasy,LevelThreeMedium,LevelThreeHard, 
LevelFourEasy, LevelFourMedium, LevelFourHard];
// easy > medium > hard > next level
challengeModes = 
[false, false, false,
false,false, false,
false, false, false, 
false, false, false];
// easy > medium > hard > next level
times = 
[100, 100, 100,
100, 100, 100,
100, 100, 100, 
100, 100, 100];
// 0 is movement, 1 is monster, 2 is mine, 3 is evolved monster one,
// 4 is evolved monster two, 5 is probe, 6 is angler
tutorials = [false, false, false, false, false, false, false]
load();





