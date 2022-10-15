text ="[Pollutant Destroying the Ocean]";
dragged = false;
xx = 0;
yy = 0;
soundHasBeenPlayed = false;
puzzleActive = false;
greenRedEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(greenRedEmiter,x,y,0)
audio_emitter_falloff(greenRedEmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;




