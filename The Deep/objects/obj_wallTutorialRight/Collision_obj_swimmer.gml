if(obj_trainer.shouldBeSwimmingRight && obj_trainer.movementTutorialTrial){
obj_mine.tutorialEnemy = false;
obj_monster.tutorialEnemy = false;
obj_trainer.textTwo = "Excellent Work\n Now swim to the end of this side\n This time the danger is real"
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_swimLeft,1,0)
	}
obj_trainer.shouldBeSwimmingLeft = true;
obj_trainer.shouldBeSwimmingRight = false;
}




























