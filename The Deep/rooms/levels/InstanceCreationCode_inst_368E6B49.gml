text = "Level Three";
targetRoom = LevelThreeDifficultySelector;
challengeModesCompleted = true;
for (i = 6; i<8; i++){
	if(obj_levelTracker.challengeModes[i] == false){
		challengeModesCompleted = false;
	}
}
if(challengeModesCompleted){
	shouldBeYellow = true;
}
soundToPlay = snd_levelfour