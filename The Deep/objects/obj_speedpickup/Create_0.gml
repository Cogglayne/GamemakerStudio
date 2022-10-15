text ="Totem of Recklessness";

speedEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(speedEmmiter,x,y,0)
audio_emitter_falloff(speedEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;


