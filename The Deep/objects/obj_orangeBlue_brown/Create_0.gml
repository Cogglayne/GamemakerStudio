text ="[Pollutant Destroying the Ocean]";
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
soundHasBeenPlayed = false;
orangeBlueEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(orangeBlueEmiter,x,y,0)
audio_emitter_falloff(orangeBlueEmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;




