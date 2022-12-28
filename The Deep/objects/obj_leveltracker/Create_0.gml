// challenge mode variables
levelFourChallengeModeClear = false;
levelFourEasyChallengeModeClear = false;
levelFourMediumChallengeModeClear = false;
levelFourHardChallengeModeClear = false;
evolvedMonsterTutorialOneCleared = false;
evolvedMonsterTutorialTwoCleared = false;
// level time variables
levelFourEasyTime = 100;
levelFourMediumTime = 100;
levelFourHardTime = 100;
timer = 100;
// tutorial support
mineTutorialCleared = false;
monsterTutorialCleared = false;
probeTutorialCleared = false;
anglerTutorialCleared = false;
movementTutorialCleared = false;
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
load();




