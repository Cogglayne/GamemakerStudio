if (state = 0 && (!instance_exists(obj_swimmerTwo) && obj_swimmerOne.singleplayer)) {
    audio_play_sound_on(pollutantEmitter, snd_pollutant, 1, 1)
    state = 1
	isPlayingSound = true;
}
audio_emitter_position(pollutantEmitter, x, y, 0)






































