text = "Continue"
if(obj_levelTracker.levelDifficulty = "Easy"){
	targetRoom = LevelThreeEasy
}else if (obj_levelTracker.levelDifficulty = "Medium"){
	targetRoom = LevelThreeMedium
}else if (obj_levelTracker.levelDifficulty = "Hard"){
	targetRoom = LevelThreeHard
}
soundToPlay = snd_continue