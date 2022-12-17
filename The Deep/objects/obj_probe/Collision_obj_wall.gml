if (instance_exists(obj_trainer)) {
    if (obj_trainer.probeTutorialActive) {
        obj_trainer.numHits++;
        obj_trainer.probeTutorialTrial = true;
        if (obj_trainer.probeTutorialTrial && obj_trainer.numHits == 2) {
            if (obj_disabilities.blindMode) {
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
instance_destroy(obj_probeLight)
instance_destroy(self)
obj_swimmer.probeExists = false;









