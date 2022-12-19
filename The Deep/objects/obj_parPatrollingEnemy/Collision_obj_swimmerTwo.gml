// resets sound
audio_stop_sound(snd_evolvedMonster)
state = 0;
// plays death sound
audio_play_sound(snd_playerdie, 1, 0)
// destroys swimmer two and swimmer two objects
instance_destroy(other)
instance_destroy(obj_playerTwoLight)
if (instance_exists(obj_stationaryProbe)) {
    instance_destroy(obj_stationaryProbe)
    instance_destroy(obj_stationaryProbeLight)
}
if (instance_exists(obj_swimmerTwoMonsterBarrier)) {
    instance_destroy(obj_swimmerTwoMonsterBarrier)
}
if (instance_exists(obj_swimmerTwoMineBarrier)) {
    instance_destroy(obj_swimmerTwoMineBarrier)
}
// checks if both players are dead
if (obj_levelTracker.swimmerTwoSinglePlayer == false && !instance_exists(obj_swimmer)) {
    room_goto(LoseTwoPlayers)
}











