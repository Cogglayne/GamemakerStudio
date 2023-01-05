if (instance_exists(obj_trainer)) {
    if (obj_trainer.probeTutorialActive) {
        obj_trainer.numHits++;
        obj_trainer.probeTutorialTrial = true;
        if (obj_trainer.probeTutorialTrial && obj_trainer.numHits == 2) {
            if (obj_options.blindMode) {
                audio_play_sound(snd_probeSecondLaunch, 1, 0)
            }
            obj_trainer.textTwo = "Excellent Work, Launch another probe"
        }
        if (obj_trainer.probeTutorialTrial && obj_trainer.numHits == 3) {
			stopGameSounds()
            obj_levelTracker.probeTutorialCleared = true
            obj_trainer.numHits = 0;
            obj_trainer.textTwo = ""
            room_goto(TutorialClear)
        }
    }
}
instance_destroy(self)
if(swimmer == obj_swimmerOne){
	obj_swimmerOne.probeExists = false;
}else if (swimmer == obj_swimmerTwo){
	obj_swimmerTwo.numProbes--;
}









