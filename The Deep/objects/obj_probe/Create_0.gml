instance_create_layer(x, y, "Instances", obj_probeLight);
text = "[Probe Scans Location]"

probeEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 500;
audioStartsToDropAt = 100;
audio_emitter_position(probeEmmiter, x, y, 0)
audio_emitter_falloff(probeEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;










