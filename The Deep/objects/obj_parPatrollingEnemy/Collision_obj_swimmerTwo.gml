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
if (obj_levelTracker.swimmerTwoSinglePlayer == false && !instance_exists(obj_swimmerOne)) {
    room_goto(LoseTwoPlayers)
}











