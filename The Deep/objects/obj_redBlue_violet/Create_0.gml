text = "[Pollutant Destroying the Ocean]";
tutorialBottle = false;
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
soundHasBeenPlayed = false;
redBlueEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(redBlueEmiter, x, y, 0)
audio_emitter_falloff(redBlueEmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
firstRun = true;


