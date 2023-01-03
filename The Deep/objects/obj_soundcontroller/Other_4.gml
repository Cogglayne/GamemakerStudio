stopRoomText()
if (obj_options.textToSpeak) {
    if (room == Levels || room == Multiplayer) {
        if (!obj_levelTracker.monsterTutorialCleared && !obj_levelTracker.mineTutorialCleared && !obj_levelTracker.probeTutorialCleared && !obj_levelTracker.anglerTutorialCleared && !obj_levelTracker.evolvedMonsterTutorialOneCleared && !obj_levelTracker.evolvedMonsterTutorialTwoCleared) {
            audio_play_sound(snd_tutorialsRecommended, 1, 0)
        }
    }
    if (room == LevelFourEasy || room == LevelFourHard || room == LevelFourMedium) {
        audio_play_sound(snd_intro, 1, 0)
    }
    if (room == InstructionsPageOne) {
        audio_play_sound(snd_instructionsPageone, 1, 0)
    }
    if (room == InstructionsPageTwo) {
        audio_play_sound(snd_instructionsPagetwo, 1, 0)
    }
    if (room == InstructionsPageThree) {
        audio_play_sound(snd_instructionsPagethree, 1, 0)
    }
    if (room == InstructionsPageFour) {
        audio_play_sound(snd_instructionsPagefour, 1, 0)
    }
    if (room == MainMenu) {
        audio_play_sound(snd_TheDeep, 1, 0)
    }
    if (room == Win) {
        audio_play_sound(snd_win, 1, 0)
    }
    if (room == AlternateWin) {
        audio_play_sound(snd_alternateWin, 1, 0)
    }
    if (room == TutorialClear) {
        stopTrainerSounds()
        audio_play_sound(snd_tutorialPassed, 1, 0)
    }
    if (room == TutorialFailed) {
        stopTrainerSounds()
        audio_play_sound(snd_tutorialNotPassed, 1, 0)
    }
    if (room == Lose) {
        audio_play_sound(snd_lostSingle, 1, 0)
    }
    if (room == LoseTwoPlayers) {
        audio_play_sound(snd_lostMulti, 1, 0)
    }
	if(room == LevelFourDifficultySelector){
		if(obj_options.destroyEnemiesWithBarriers){
			audio_play_sound(snd_collectOrDestroy,1,0)
		}else{
			audio_play_sound(snd_collectPollutants,1,0)
		}
	}
}




















