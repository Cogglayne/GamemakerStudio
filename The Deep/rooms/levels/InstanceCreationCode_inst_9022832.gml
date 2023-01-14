text = "Level One";
targetRoom = LevelOneDifficultySelector;
challengeModesCompleted = true;
for (i = 0; i<2; i++){
	if(obj_levelTracker.challengeModes[i] == false){
		challengeModesCompleted = false;
	}
}
if(challengeModesCompleted){
	shouldBeYellow = true;
}
soundToPlay = snd_levelOne