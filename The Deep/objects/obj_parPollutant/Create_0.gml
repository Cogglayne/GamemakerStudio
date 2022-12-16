// puzzle
dragged = false;
xx = 0;
yy = 0;
puzzleActive = false;
// sound
soundHasBeenPlayed = false;
pollutantEmitter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 150;
audio_emitter_position(pollutantEmitter, x, y, 0)
audio_emitter_falloff(pollutantEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
// back to back play
firstRun = true;



































