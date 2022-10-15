whaleEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 400;
audioStartsToDropAt = 200;
audio_emitter_position(whaleEmmiter,x,y,0)
audio_emitter_falloff(whaleEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;
text = "[Whale Song]"























