// sound
if (state = 0) {
    audio_play_sound_on(evolvedMonsterEmmiter, snd_evolvedMonster, 1, 1)
    state = 1
}
audio_emitter_position(evolvedMonsterEmmiter, x, y, 0)
if (vsp > 0 && hsp > 0) {
    audio_emitter_pitch(evolvedMonsterEmmiter, 0.8)
} else if (vsp < 0 && hsp < 0) {
    audio_emitter_pitch(evolvedMonsterEmmiter, 1.2)
}
// movement
x += hsp;
y += vsp;
// collisions
tutorialMonsterEvolvedCollision(obj_tutorialMonsterBarrier)
monsterEvolvedCollision(obj_monsterBarrier);
if (instance_exists(obj_swimmerMonsterBarrier)) {
    monsterEvolvedBarrierCollision(obj_swimmerMonsterBarrier);
}
if (instance_exists(obj_swimmerMineBarrier)) {
    monsterEvolvedBarrierCollision(obj_swimmerMineBarrier);
}
// destroy if health is zero
if (numHits == 0) {
    instance_destroy()
}