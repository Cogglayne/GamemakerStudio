if (!obj_microtransactions.extraLife && !obj_swimmer.avoidanceTime && !tutorialEnemy) {
    audio_play_sound(snd_playerdie, 1, 0)
    obj_levelTracker.textShouldBeShowing = true;
    stopGameSounds()
    if (room == TutorialAngler) {
        room_goto(TutorialFailed)
    }
    instance_activate_layer("Extra")
    instance_deactivate_layer("Instances")
    instance_deactivate_layer("LightInstance")
    instance_deactivate_layer("Whales")
    instance_deactivate_layer("AmbientBackground")
}











