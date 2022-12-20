// movement
if (obj_microtransactions.enemiesSlowed || obj_options.decreaseReactionTimeRequired) {
    if (hsp != 0) {
        hsp -= 1;
    }
    if (vsp != 0) {
        vsp -= 1;
    }
}
// tutorial status
tutorialEnemy = false;
// sound
enemyEmitter = audio_emitter_create();
audio_emitter_position(enemyEmitter, x, y, 0)
audio_emitter_falloff(enemyEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
isPlayingSound = false;