if (instance_exists(obj_swimmerOne)) {
    if (obj_swimmerOne.singleplayer && obj_options.blindMode) {
        if (state = 0 && point_distance(obj_swimmerOne.x, obj_swimmerOne.y, x, y) < audioMaxDistanceToBeHeard) {
            audio_play_sound_on(totemEmitter, sound, 0, 1)
            state = 1
        }
        if (point_distance(obj_swimmerOne.x, obj_swimmerOne.y, x, y) > audioMaxDistanceToBeHeard) {
            state = 0;
        }
    }
}























