function changeTutorialStatus(trainerTutorialNumber, trainerTrialNumber, levelTrackerTutorialNumber, text, sound, hits) {
    if (instance_exists(obj_trainer)) {
        if (obj_trainer.tutorials[trainerTutorialNumber]) {
            obj_trainer.numHits++;
			obj_trainer.tutorials[trainerTrialNumber] = true;
            if (obj_trainer.tutorials[trainerTrialNumber] && obj_trainer.numHits == hits) {
                if (obj_options.textToSpeak) {
                    stopTrainerSounds();
                    audio_play_sound(sound, 1, 0)
                }
                obj_trainer.textTwo = text;
				if(instance_exists(obj_parHorror)){
					obj_parHorror.tutorialEnemy = false;
				}
				if(instance_exists(obj_parPatrollingEnemy)){
					obj_parPatrollingEnemy.tutorialEnemy = false;
				}
				if(instance_exists(obj_parHorror)){
					obj_parHorror.tutorialEnemy = false;
				}
            }
            if (obj_trainer.tutorials[trainerTrialNumber] && obj_trainer.numHits == hits + 1) {
                obj_levelTracker.tutorials[levelTrackerTutorialNumber] = true
                stopGameSounds()
                audio_play_sound(snd_playerWin, 1, 0)
                room_goto(TutorialClear)
            }
        }
    }
}
function tutorialCollision(trainerTutorialNumber, text1, text2, sound1, sound2) {
    if (instance_exists(obj_trainer)) {
        if (obj_trainer.tutorials[trainerTutorialNumber]) {
            if (instance_exists(obj_parBarrier) && !obj_trainer.firstBounce) {
                if (obj_options.textToSpeak) {
                    stopTrainerSounds()
                    audio_play_sound(sound1, 1, 0)
                }
                obj_trainer.textTwo = text1
                instance_destroy(obj_parBarrier)
            } else {
                if (obj_options.textToSpeak) {
                    stopTrainerSounds()
                    audio_play_sound(sound2, 1, 0)
                }
                obj_trainer.textTwo = text2
            }
            obj_trainer.firstBounce = false;
        }
    }
}