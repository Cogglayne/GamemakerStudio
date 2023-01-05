text = "Continue"
if(obj_levelTracker.levelDifficulty = "Easy"){
	targetRoom = LevelFourEasy
}else if (obj_levelTracker.levelDifficulty = "Medium"){
	targetRoom = LevelFourMedium
}else if (obj_levelTracker.levelDifficulty = "Hard"){
	targetRoom = LevelFourHard
}
soundToPlay = snd_continue