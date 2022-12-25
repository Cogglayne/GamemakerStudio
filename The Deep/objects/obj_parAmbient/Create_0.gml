ambientEmitter = audio_emitter_create();
audio_emitter_position(ambientEmitter, x, y, 0)
audio_emitter_falloff(ambientEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
isPlayingSound = false;





























