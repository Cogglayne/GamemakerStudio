if (obj_levelTracker.swimmerOneSinglePlayer == false) {
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
if (!obj_microtransactions.extraLife && !tutorialEnemy && !obj_swimmerOne.avoidanceTime) {
    // if the extra life cosmetic life is not active and the evolve
    // monster is not a tutorial enemy
    audio_play_sound(snd_playerdie, 1, 0)
    // shows death text
    obj_levelTracker.textShouldBeShowing = true;
		 // stops sounds
        stopGameSounds()
        if (room == TutorialMonsterEvolvedOne || room == TutorialMonsterEvolvedTwo  || room == TutorialMine  || room == TutorialMonster || room == TutorialMovement) {
            room_goto(TutorialFailed)
        }
        if (obj_options.alternativePunishment) {
            // layer manipulation
            instance_create_layer(2400, 0, "Wait", obj_wait)
            instance_activate_layer("Wait")
            instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("AmbientBackground")
        } else {
            // layer manipulation
            instance_activate_layer("Extra")
            instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("AmbientBackground")
        }
}
}



 