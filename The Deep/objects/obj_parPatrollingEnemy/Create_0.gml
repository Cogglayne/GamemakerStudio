// movement
if (obj_microtransactions.microtransactions[8] || obj_options.options[3]) {
    if (hsp < 0) {
        hsp += 2
    } else if (hsp > 0){
		hsp -= 2
	}
    if (vsp < 0) {
        vsp--;
    } else if (vsp < 0){
		vsp++
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