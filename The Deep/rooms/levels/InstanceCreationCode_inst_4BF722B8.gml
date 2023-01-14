text = "Level Two";
targetRoom = LevelTwoDifficultySelector;
challengeModesCompleted = true;
for (i = 3; i<5; i++){
	if(obj_levelTracker.challengeModes[i] == false){
		challengeModesCompleted = false;
	}
}
if(challengeModesCompleted){
	shouldBeYellow = true;
}
soundToPlay = snd_levelTwo