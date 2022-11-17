waveEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 9900;
audioStartsToDropAt = 9700;
audio_emitter_position(waveEmmiter, x, y, 0)
audio_emitter_falloff(waveEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
text = "[Waves From Above]"






















