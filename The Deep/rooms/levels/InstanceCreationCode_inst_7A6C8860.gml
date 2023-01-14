text = "Level Four";
targetRoom = LevelFourDifficultySelector;
challengeModesCompleted = true;
for (i = 9; i<array_length(obj_levelTracker.challengeModes); i++){
	if(obj_levelTracker.challengeModes[i] == false){
		challengeModesCompleted = false;
	}
}
if(challengeModesCompleted){
	shouldBeYellow = true;
}
soundToPlay = snd_levelFour