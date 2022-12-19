probeLight = instance_create_layer(x, y, "Instances", lightType);
probeEmitter = audio_emitter_create();
audioMaxDistanceToBeHeard = 500;
audioStartsToDropAt = 100;
audio_emitter_position(probeEmitter, x, y, 0)
audio_emitter_falloff(probeEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
isPlayingSound = false;











