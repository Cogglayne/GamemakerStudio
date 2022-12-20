if (state = 0 && (!instance_exists(obj_swimmerTwo) && obj_swimmerOne.singleplayer)) {
    audio_play_sound_on(barrierEmitter, snd_barrierCreation, 1, 1)
    state = 1
	isPlayingSound = true;
}
audio_emitter_position(barrierEmitter, x, y, 0)





















