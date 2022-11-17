text = "Totem of Cautiousness";

visionEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(visionEmmiter, x, y, 0)
audio_emitter_falloff(visionEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;




