if (!obj_microtransactions.microtransactions[4] && !obj_levelTracker.swimmerOneSinglePlayer) {
    // destroys swimmer object
    instance_destroy(other)
    instance_destroy(obj_playerOneLight)
    if (instance_exists(obj_probe)) {
        instance_destroy(obj_probe)
        instance_destroy(obj_probeLight)
    }
    if (instance_exists(obj_swimmerOneMonsterBarrier)) {
        instance_destroy(obj_swimmerOneMonsterBarrier)
    }
    if (instance_exists(obj_swimmerOneMineBarrier)) {
        instance_destroy(obj_swimmerOneMineBarrier)
    }
    // checks if both swimmers are dead
    if (!instance_exists(obj_swimmerTwo)) {
        room_goto(LoseTwoPlayers)
    }
}else{
if (!obj_microtransactions.microtransactions[4] && !tutorialEnemy && !obj_swimmerOne.avoidanceTime) {
    // if the extra life cosmetic life is not active and the evolve
    // monster is not a tutorial enemy
    // shows death text
    obj_levelTracker.textShouldBeShowing = true;
		 // stops sounds
        stopGameSounds()
		audio_play_sound(snd_playerdie, 1, 0)
        if (room == TutorialMonsterEvolvedOne || room == TutorialMonsterEvolvedTwo  || room == TutorialMine  || room == TutorialMonster || room == TutorialMovement) {
            room_goto(TutorialFailed)
        }
        if (obj_options.options[12]) {
			enemyLayerManipulation("Wait")
        } else {
			enemyLayerManipulation("Extra")
        }
}
}



 