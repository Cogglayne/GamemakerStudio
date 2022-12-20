function swimmerCollisions(object) {
    if place_meeting(x + hsp, y, object) {
        xCollision = true
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = 0;
    } else {
        xCollision = false;
    }
    if place_meeting(x, y + vsp, object) {
        yCollision = true
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        vsp = 0;
    } else {
        yCollision = false;
    }
    if ((xCollision == true || yCollision == true) && obj_options.blindMode) {
        if (!audio_is_playing(snd_wall)) {
            audio_play_sound(snd_wall, 1, 0);
        }
    } else {
        audio_stop_sound(snd_wall)
    }
}

// wall collisions
function mineTutorialCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.mineTutorialActive) {
                if (instance_exists(obj_swimmerOneMineBarrier) && !obj_trainer.firstBounce) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_mineTutorialMistake, 1, 0)
                    }
                    obj_trainer.textTwo = "Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again"
                    instance_destroy(obj_swimmerOneMineBarrier)
                } else {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_mineUp, 1, 0)
                    }
                    obj_trainer.textTwo = "Deploy the barrier to redirect the mine up"
                }
                obj_trainer.firstBounce = false;
            }
        }
        vsp = -vsp;
    }
}

function mineCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.mineTutorialActive) {
                if (instance_exists(obj_swimmerOneMineBarrier)) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_mineTutorialMistake, 1, 0)
                    }
                    obj_trainer.textTwo = "Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again"
                    instance_destroy(obj_swimmerOneMineBarrier)
                } else {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_mineDown, 1, 0)
                    }
                    obj_trainer.textTwo = "Deploy the barrier to redirect the mine down"
                }
            }
        }
        vsp = -vsp;
    }
}

function monsterTutorialCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.monsterTutorialActive) {
                if (instance_exists(obj_swimmerOneMonsterBarrier) && !obj_trainer.firstBounce) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_monsterTutorialMistake, 1, 0)
                    }
                    obj_trainer.textTwo = "Make sure you deploy the barrier in the monster's path\n out in the field you can only deploy one at a time\n try again"
                    instance_destroy(obj_swimmerOneMonsterBarrier)
                } else {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_monsterRight, 1, 0)
                    }
                    obj_trainer.textTwo = "Deploy the barrier to redirect the monster to the right"
                }
                obj_trainer.firstBounce = false;
            }
        }
        image_xscale = -image_xscale;
    }
}

function monsterCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.monsterTutorialActive) {
                if (instance_exists(obj_swimmerOneMonsterBarrier)) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_monsterTutorialMistake, 1, 0)
                    }
                    obj_trainer.textTwo = "Make sure you deploy the barriers in the monster's path\n out in the field you can only deploy one at a time\n try again"
                    instance_destroy(obj_swimmerOneMonsterBarrier)
                } else {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_monsterLeft, 1, 0)
                    }
                    obj_trainer.textTwo = "Deploy the barrier to redirect the monster to the left"
                }
            }
        }
        image_xscale = -image_xscale;
    }
}

function tutorialMonsterEvolvedCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        if (instance_exists(obj_trainer)) {
            if (instance_exists(obj_swimmerOneMineBarrier) || instance_exists(obj_swimmerOneMonsterBarrier)) {
                if (obj_options.blindMode) {
                    stopTrainerSounds()
                    audio_play_sound(snd_evolvedMonsterTutorialMistake, 1, 0)
                }
                obj_trainer.textTwo = "Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again"
                instance_destroy(obj_swimmerOneMineBarrier)
                instance_destroy(obj_swimmerOneMineBarrier)
            } else {
                if (obj_options.blindMode) {
                    stopTrainerSounds()
                    audio_play_sound(snd_monsterEvolvedCollision, 1, 0)
                }
                obj_trainer.textTwo = "Deploy the barrier to redirect the evolved monster right and down"
            }
        }
        hsp = -hsp;
        vsp = -vsp;
        image_xscale = -image_xscale;
    }
}

function monsterEvolvedCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        if (instance_exists(obj_trainer)) {
            if ((instance_exists(obj_swimmerOneMineBarrier) || instance_exists(obj_swimmerOneMonsterBarrier)) && !obj_trainer.firstBounce) {
                if (obj_options.blindMode) {
                    stopTrainerSounds()
                    audio_play_sound(snd_evolvedMonsterTutorialMistake, 1, 0)
                }
                obj_trainer.textTwo = "Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again"
                instance_destroy(obj_swimmerOneMineBarrier)
                instance_destroy(obj_swimmerOneMineBarrier)
            } else {
                if (obj_options.blindMode) {
                    stopTrainerSounds()
                    audio_play_sound(snd_monsterEvolvedTutorialCollision, 1, 0)
                }
                obj_trainer.textTwo = "Deploy the barrier to redirect the evolved monster left and up"
            }
            obj_trainer.firstBounce = false;
        }
        hsp = -hsp;
        vsp = -vsp;
        image_xscale = -image_xscale;
    }
}

// barrier collisions
function swimmerMonsterBarrierCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        if (obj_levelTracker.variableObjectives && obj_swimmerOne.isPlaying) {
            numHits--;
        }
        if (numHits == 0) {
            instance_destroy(object)
        }
        image_xscale = -image_xscale;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.monsterTutorialActive) {
                obj_trainer.monsterTutorialTrial = true;
                obj_trainer.numHits++;
                if (obj_trainer.monsterTutorialTrial && obj_trainer.numHits == 2) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_enemyActive, 1, 0)
                    }
                    obj_trainer.textTwo = "Excellent Work, This time the danger is real"
                    obj_monster.tutorialEnemy = false;
                }
                if (obj_trainer.monsterTutorialTrial && obj_trainer.numHits == 3) {
                    obj_levelTracker.monsterTutorialCleared = true
                    instance_destroy(obj_monster)
                    obj_trainer.firstBounce = true;
                    obj_trainer.numHits = 0;
                    obj_trainer.textTwo = ""
                    room_goto(TutorialClear);
                }
            }
        }
    }
}

function swimmerMineBarrierCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        if (obj_levelTracker.variableObjectives && obj_swimmerOne.isPlaying) {
            numHits--;
        }
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.mineTutorialActive) {
                obj_trainer.numHits++;
                obj_trainer.mineTutorialTrial = true;
                if (obj_trainer.mineTutorialTrial && obj_trainer.numHits == 2) {
                    if (obj_options.blindMode) {
                        stopTrainerSounds()
                        audio_play_sound(snd_enemyActive, 1, 0)
                    }
                    obj_trainer.textTwo = "Excellent Work, This time the danger is real"
                    obj_mine.tutorialEnemy = false;
                }
                if (obj_trainer.mineTutorialTrial && obj_trainer.numHits == 3) {
                    obj_levelTracker.mineTutorialCleared = true
                    instance_destroy(obj_mine)
                    obj_trainer.firstBounce = true;
                    obj_trainer.numHits = 0;
                    obj_trainer.textTwo = ""
                    room_goto(TutorialClear);
                }
            }
        }
        vsp = -vsp;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
    }
}

function monsterEvolvedBarrierCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        vsp = -vsp;
        if (obj_levelTracker.variableObjectives && obj_swimmerOne.isPlaying) {
            numHits--;
        }
        if (object == obj_swimmerOneMineBarrier) {
            if (instance_exists(obj_trainer)) {
                if (obj_trainer.evolvedMonsterTutorialOneActive) {
                    obj_trainer.numHits++;
                    obj_trainer.evolvedMonsterTutorialTrialOne = true;
                    if (obj_trainer.evolvedMonsterTutorialTrialOne && obj_trainer.numHits == 2) {
                        if (obj_options.blindMode) {
                            stopTrainerSounds()
                            audio_play_sound(snd_enemyActive, 1, 0)
                        }
                        obj_trainer.textTwo = "Excellent Work, This time the danger is real"
                        obj_monsterEvolved.tutorialEnemy = false;
                    }
                    if (obj_trainer.evolvedMonsterTutorialTrialOne && obj_trainer.numHits == 3) {
                        obj_levelTracker.evolvedMonsterTutorialOneCleared = true
                        instance_destroy(obj_monsterEvolved)
                        obj_trainer.firstBounce = true;
                        obj_trainer.numHits = 0;
                        obj_trainer.textTwo = ""
                        room_goto(TutorialClear);
                    }
                }
            }
            instance_destroy(object)
            audio_play_sound(snd_barrierDestruction, 1, 0)
        }
        if (object == obj_swimmerOneMonsterBarrier) {
            if (instance_exists(obj_trainer)) {
                if (obj_trainer.evolvedMonsterTutorialTwoActive) {
                    obj_trainer.numHits++;
                    obj_trainer.evolvedMonsterTutorialTrialTwo = true;
                    if (obj_trainer.evolvedMonsterTutorialTrialTwo && obj_trainer.numHits == 2) {
                        if (obj_options.blindMode) {
                            stopTrainerSounds()
                            audio_play_sound(snd_enemyActive, 1, 0)
                        }
                        obj_trainer.textTwo = "Excellent Work, This time the danger is real"
                        obj_monsterEvolved.tutorialEnemy = false;
                    }
                    if (obj_trainer.evolvedMonsterTutorialTrialTwo && obj_trainer.numHits == 3) {
                        obj_levelTracker.evolvedMonsterTutorialTwoCleared = true
                        instance_destroy(obj_monsterEvolved)
                        obj_trainer.firstBounce = true;
                        obj_trainer.numHits = 0;
                        obj_trainer.textTwo = ""
                        room_goto(TutorialClear);
                    }
                }
            }
            instance_destroy(object)
            audio_play_sound(snd_barrierDestruction, 1, 0)
        }
        image_xscale = -image_xscale;
    }
}

function swimmerTwoMonsterBarrierCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        image_xscale = -image_xscale;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
        obj_swimmerTwo.numMonsterBarriers--;
    }
}

function swimmerTwoMineBarrierCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        vsp = -vsp;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
        obj_swimmerTwo.numMineBarriers--;
    }
}