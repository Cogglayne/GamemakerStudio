text = "Totem of Insanity"


insanityEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(insanityEmmiter,x,y,0)
audio_emitter_falloff(insanityEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;


