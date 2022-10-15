text = "[Pollutant Destroying the Ocean]";
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
soundHasBeenPlayed = false;
brownWhiteEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(brownWhiteEmiter,x,y,0)
audio_emitter_falloff(brownWhiteEmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;


