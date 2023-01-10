if (state = 0 && !audio_is_playing(snd_horror)) {
    audio_play_sound_on(anglerEmitter, snd_horror, 1, 1)
    state = 1
    isPlayingSound = true;
}
audio_emitter_position(anglerEmitter, x, y, 0)

if (instance_exists(obj_trainer)) {
    if (obj_trainer.horrorFollowing) {
        setDirectionAndSpeed(obj_trainer, obj_trainerLight);
    } else {
        setDirectionAndSpeed(obj_swimmerOne, obj_playerOneLight)
    }
} else {
    setDirectionAndSpeed(obj_swimmerOne, obj_playerOneLight)
}

if (lifeTime == 0) {
    instance_destroy(self)
}































