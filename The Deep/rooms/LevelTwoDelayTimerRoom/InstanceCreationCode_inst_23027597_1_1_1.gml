text = "Continue"
if(obj_levelTracker.levelDifficulty = "Easy"){
	targetRoom = LevelTwoEasy
}else if (obj_levelTracker.levelDifficulty = "Medium"){
	targetRoom = LevelTwoMedium
}else if (obj_levelTracker.levelDifficulty = "Hard"){
	targetRoom = LevelTwoHard
}
soundToPlay = snd_continue