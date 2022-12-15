// movement
if (obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity) {
    hsp = 5;
    vsp = 1;
} else {
    hsp = 6; //6
    vsp = 2; //2
}
// tutorial status
tutorialEnemy = false;
// text
text = "[Evolved Monster Bellows]";
// sound
enemyEmitter = audio_emitter_create();
audio_emitter_position(enemyEmitter, x, y, 0)
audio_emitter_falloff(enemyEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;

// health 
numHits = 2;