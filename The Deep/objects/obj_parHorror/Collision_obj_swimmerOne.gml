if (!obj_microtransactions.extraLife && !obj_swimmerOne.avoidanceTime && !tutorialEnemy) {
    audio_play_sound(snd_playerdie, 1, 0)
    obj_levelTracker.textShouldBeShowing = true;
    stopGameSounds()
    if (room == TutorialAngler) {
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











