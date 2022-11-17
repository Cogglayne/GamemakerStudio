text = "[Pollutant Destroying the Ocean]";
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
soundHasBeenPlayed = false;
yellowBlueEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(yellowBlueEmiter, x, y, 0)
audio_emitter_falloff(yellowBlueEmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
firstRun = true;



