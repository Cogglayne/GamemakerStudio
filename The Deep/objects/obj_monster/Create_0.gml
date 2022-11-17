// movement
if (obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity) {
    hsp = 4;
} else {
    hsp = 6; //6
}
// tutorial status
tutorialEnemy = false;
// text
text = "[Monster Roars]";
//sound
monsterEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 500;
audioStartsToDropAt = 250;
audio_emitter_position(monsterEmmiter, x, y, 0)
audio_emitter_falloff(monsterEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;

// health
numHits = 2;