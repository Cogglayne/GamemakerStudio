text = "Cursed Totem of Recklessness"


cursedSpeedEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 150;
audioStartsToDropAt = 140;
audio_emitter_position(cursedSpeedEmmiter,x,y,0)
audio_emitter_falloff(cursedSpeedEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;







