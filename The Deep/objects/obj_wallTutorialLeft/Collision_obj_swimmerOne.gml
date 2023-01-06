if(obj_trainer.shouldBeSwimmingLeft && obj_trainer.movementTutorialTrial){
	obj_levelTracker.tutorials[1] = true;
	stopGameSounds()
	audio_play_sound(snd_playerWin,1,0)
	room_goto(TutorialClear);
}



























