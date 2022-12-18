totemEmitter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(totemEmitter, x, y, 0)
audio_emitter_falloff(totemEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;