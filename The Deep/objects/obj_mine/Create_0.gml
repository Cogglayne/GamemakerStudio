if (obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity) {
    vsp = 1;
} else {
    vsp = 3; //3
}
tutorialEnemy = false;
text = "[Mine Pings Location]";
mineEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 500;
audioStartsToDropAt = 250;
audio_emitter_position(mineEmmiter, x, y, 0)
audio_emitter_falloff(mineEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;

// health
numHits = 2;