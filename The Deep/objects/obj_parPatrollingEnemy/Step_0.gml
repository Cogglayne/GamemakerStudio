// sound
if (state = 0 && (!instance_exists(obj_swimmerTwo) && obj_swimmerOne.singleplayer)) {
    audio_play_sound_on(enemyEmitter, sound, 1, 1)
    state = 1
	isPlayingSound = true;
}
audio_emitter_position(enemyEmitter, x, y, 0)
// movement
x += hsp;
y += vsp;
// collisions and pitch manipulation
if (monster) {
    if (hsp < 0) {
        audio_emitter_pitch(enemyEmitter, 0.8)
    } else {
        audio_emitter_pitch(enemyEmitter, 1.2)
    }
    monsterCollision(obj_monsterBarrier);
    monsterTutorialCollision(obj_tutorialMonsterBarrier)
    if (instance_exists(obj_swimmerOneMonsterBarrier)) {
        swimmerMonsterBarrierCollision(obj_swimmerOneMonsterBarrier);
    }
    if (instance_exists(obj_swimmerTwoMonsterBarrier)) {
        swimmerTwoMonsterBarrierCollision(obj_swimmerTwoMonsterBarrier);
    }
} else if (mine) {
    if (vsp > 0) {
        audio_emitter_pitch(enemyEmitter, 0.8)
    } else {
        audio_emitter_pitch(enemyEmitter, 1.2)
    }
    mineCollision(obj_mineBarrier);
    mineTutorialCollision(obj_tutorialMineBarrier)
    if (instance_exists(obj_swimmerOneMineBarrier)) {
        swimmerMineBarrierCollision(obj_swimmerOneMineBarrier);
    }
    if (instance_exists(obj_swimmerTwoMineBarrier)) {
        swimmerTwoMineBarrierCollision(obj_swimmerTwoMineBarrier);
    }
} else if (evolvedMonster) {
    if (vsp > 0 && hsp > 0) {
        audio_emitter_pitch(enemyEmitter, 0.8)
    } else if (vsp < 0 && hsp < 0) {
        audio_emitter_pitch(enemyEmitter, 1.2)
    }
    tutorialMonsterEvolvedCollision(obj_tutorialMonsterBarrier)
    monsterEvolvedCollision(obj_monsterBarrier);
    if (instance_exists(obj_swimmerOneMonsterBarrier)) {
        monsterEvolvedBarrierCollision(obj_swimmerOneMonsterBarrier);
    }
    if (instance_exists(obj_swimmerOneMineBarrier)) {
        monsterEvolvedBarrierCollision(obj_swimmerOneMineBarrier);
    }
}
// destroy if health is zero
if (numHits == 0) {
    instance_destroy()
}



























