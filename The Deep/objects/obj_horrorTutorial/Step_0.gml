if (state = 0 && !audio_is_playing(snd_horror)) {
    audio_play_sound_on(anglerEmitter, snd_horror, 1, 1)
    state = 1
	isPlayingSound = true;
}
audio_emitter_position(anglerEmitter, x, y, 0)
if (instance_exists(obj_playerOneLight)) {
    if (obj_trainer.anglerTutorialTrial && obj_trainer.anglerTutorialActive) {
        direction = point_direction(x, y, obj_swimmer.x, obj_swimmer.y);
        if (obj_microtransactions.extraLife) {
            speed = 0;
        } else {
            if (obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity) {
                speed = 5;
            } else {
                speed = 5; //7
            }
        }
    }
} else {
    speed = 0;
}
if (instance_exists(obj_trainerLight)) {
    if (!obj_trainer.anglerTutorialTrial && obj_trainer.anglerTutorialActive) {
        direction = point_direction(x, y, obj_trainer.x, obj_trainer.y);
        if (obj_microtransactions.extraLife) {
            speed = 0;
        } else {
            if (obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity) {
                speed = 5;
            } else {
                speed = 5; //7
            }
        }
    }
} else {
    speed = 0;
}





