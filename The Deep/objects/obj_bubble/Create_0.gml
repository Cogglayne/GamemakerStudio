bubbleEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 350;
audioStartsToDropAt = 175;
audio_emitter_position(bubbleEmiter,x,y+50,0)
audio_emitter_falloff(bubbleEmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;
text = "[Bubbling From Ocean Plant Life]"


























