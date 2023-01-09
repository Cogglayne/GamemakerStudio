if(obj_trainer.movementControl[4] && obj_trainer.tutorials[1]){
	obj_levelTracker.tutorials[1] = true;
	stopGameSounds()
	audio_play_sound(snd_playerWin,1,0)
	room_goto(TutorialClear);
}



























