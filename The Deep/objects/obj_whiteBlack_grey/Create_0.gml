text = "[Pollutant Destroying the Ocean]";
tutorialBottle = false;
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
soundHasBeenPlayed = false;
whiteBlackEmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(whiteBlackEmiter, x, y, 0)
audio_emitter_falloff(whiteBlackEmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
