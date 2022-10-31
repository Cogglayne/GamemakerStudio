stopRoomText()
if(obj_disabilities.blindMode){
if(room == LevelFourDifficultySelector){
if(!obj_levelTracker.monsterTutorialCleared && !obj_levelTracker.mineTutorialCleared && !obj_levelTracker.probeTutorialCleared && !obj_levelTracker.anglerTutorialCleared && !obj_levelTracker.evolvedMonsterTutorialOneCleared && !obj_levelTracker.evolvedMonsterTutorialTwoCleared){
audio_play_sound(snd_tutorialsRecommended,1,0)
}
}
if(room == LevelFourEasy || room == LevelFourHard || room == LevelFourMedium){
audio_play_sound(snd_intro,1,0)
}
if(room == Instructions){
audio_play_sound(snd_instructionsPageone,1,0)
}
if(room == InstructionsPageTwo){
audio_play_sound(snd_instructionsPagetwo,1,0)
}
if(room == InstructionsPageThree){
audio_play_sound(snd_instructionsPagethree,1,0)
}
if(room == InstructionsPageFour){
audio_play_sound(snd_instructionsPagefour,1,0)
}
if(room == InstructionsPageFive){
audio_play_sound(snd_instructionsPagefive,1,0)
}
if (room == InstructionsPageSix){
audio_play_sound(snd_instructionsPagesix,1,0)
}
if(room == MainMenu){
audio_play_sound(snd_TheDeep,1,0)
}
if (room == Win){
audio_play_sound(snd_win,1,0)
}
if (room == TutorialClear){
stopTrainerSounds()
if(obj_disabilities.blindMode){
audio_play_sound(snd_tutorialPassed,1,0)
}
audio_play_sound(snd_playerWin,1,0)
}
if (room == TutorialFailed){
stopTrainerSounds()
if(obj_disabilities.blindMode){
audio_play_sound(snd_tutorialNotPassed,1,0)
}
}
if (room == Lose){
audio_play_sound(snd_lostSingle,1,0)
}
if (room == LoseTwoPlayers){
audio_play_sound(snd_lostMulti,1,0)
}
}
























