if (obj_levelTracker.swimmerOneSinglePlayer == true) {
    audio_play_sound(snd_pickup, 1, 0)
    obj_swimmer.numPollutants--;
    obj_levelTracker.swimmerOneNumPollutants--;
    if (obj_disabilities.blindMode) {
        switch (obj_levelTracker.swimmerOneNumPollutants) {
            case 1:
                audio_play_sound(snd_1, 1, 0);
                break;
            case 2:
                audio_play_sound(snd_2, 1, 0);
                break;
            case 3:
                audio_play_sound(snd_3, 1, 0);
                break;
            case 4:
                audio_play_sound(snd_4, 1, 0);
                break;
            case 5:
                audio_play_sound(snd_5, 1, 0);
                break;
            case 6:
                audio_play_sound(snd_6, 1, 0);
                break;
            case 7:
                audio_play_sound(snd_7, 1, 0);
                break;
        }
    }
    instance_destroy(self);
    if (obj_swimmer.numPollutants == 0) {
        setLevelData()
        stopGameSounds()
        instance_activate_layer("Pollutants")
        instance_activate_layer("Puzzle")
        if (obj_disabilities.blindMode) {
            audio_play_sound(snd_puzzle, 1, 0);
        }
        instance_deactivate_layer("Instances")
        instance_deactivate_layer("LightInstance")
        instance_deactivate_layer("Whales")
        instance_deactivate_layer("AmbientBackground")
    }
}


















