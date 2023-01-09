if (obj_trainer.movementControl[3] && obj_trainer.tutorials[1]) {
	obj_parPatrollingEnemy.tutorialEnemy = false;
    obj_trainer.textTwo = "Excellent Work\n Now swim to the end of this side\n This time the danger is real"
    if (obj_options.textToSpeak) {
        stopTrainerSounds()
        audio_play_sound(snd_swimLeft, 1, 0)
    }
     obj_trainer.movementControl[3] = false;
	 obj_trainer.movementControl[4] = true;	
}




























