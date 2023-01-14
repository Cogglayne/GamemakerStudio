text = "Continue"
if(obj_levelTracker.levelDifficulty = "Easy"){
	targetRoom = LevelOneEasy
}else if (obj_levelTracker.levelDifficulty = "Medium"){
	targetRoom = LevelOneMedium
}else if (obj_levelTracker.levelDifficulty = "Hard"){
	targetRoom = LevelOneHard
}
soundToPlay = snd_continue