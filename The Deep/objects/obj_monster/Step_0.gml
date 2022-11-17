// sound
if (state = 0) {
    audio_play_sound_on(monsterEmmiter, snd_monster, 1, 1)
    state = 1
}
audio_emitter_position(monsterEmmiter, x, y, 0)
if (hsp < 0) {
    audio_emitter_pitch(monsterEmmiter, 0.8)
} else {
    audio_emitter_pitch(monsterEmmiter, 1.2)
}
// collisions
monsterCollision(obj_monsterBarrier);
monsterTutorialCollision(obj_tutorialMonsterBarrier)
if (instance_exists(obj_swimmerMonsterBarrier)) {
    swimmerMonsterBarrierCollision(obj_swimmerMonsterBarrier);
}
if (instance_exists(obj_swimmerTwoMonsterBarrier)) {
    swimmerTwoMonsterBarrierCollision(obj_swimmerTwoMonsterBarrier);
}
// movement
if (instance_exists(obj_trainer)) {
    if (obj_trainer.monsterTutorialActive || obj_trainer.movementTutorialActive) {
        x -= hsp;
    } else {}
} else {
    x -= hsp;
}
// stops sound in multiplayer
if (instance_exists(obj_swimmerTwo)) {
    audio_stop_sound(snd_monster);
}
if (instance_exists(obj_swimmer)) {
    if (!obj_swimmer.singleplayer) {
        audio_stop_sound(snd_monster);
    }
}