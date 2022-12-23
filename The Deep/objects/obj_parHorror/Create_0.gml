anglerLight = instance_create_layer(x, y, "Instances", obj_anglerLight)
anglerEmitter = audio_emitter_create();
audioMaxDistanceToBeHeard = 600;
audioStartsToDropAt = 300;
audio_emitter_position(anglerEmitter, x, y, 0)
audio_emitter_falloff(anglerEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
isPlayingSound = false;
lifeTime = 20;









