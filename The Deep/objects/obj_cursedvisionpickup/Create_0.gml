text = "Cursed Totem of Cautiousness"

cursedVisionEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(cursedVisionEmmiter, x, y, 0)
audio_emitter_falloff(cursedVisionEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;



