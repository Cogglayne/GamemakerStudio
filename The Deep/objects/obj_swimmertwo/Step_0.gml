playerOneMovement();
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
if (keyboard_check(ord("J")) && numMonsterBarriers < 1) {
    instance_create_layer(x - 50, y, "Instances", obj_swimmerTwoMonsterBarrier);
    numMonsterBarriers++;
}
if (keyboard_check(ord("L")) && numMonsterBarriers < 1) {
    instance_create_layer(x + 50, y, "Instances", obj_swimmerTwoMonsterBarrier);
    numMonsterBarriers++;
}
if (keyboard_check(ord("I")) && numMineBarriers < 1) {
    instance_create_layer(x, y - 70, "Instances", obj_swimmerTwoMineBarrier);
    numMineBarriers++;
}
if (keyboard_check(ord("K")) && numMineBarriers < 1) {
    instance_create_layer(x, y + 70, "Instances", obj_swimmerTwoMineBarrier);
    numMineBarriers++;
}
if (keyboard_check_pressed(vk_space)) {
    if (numProbes > 2) {
        instance_destroy(instance_find(obj_stationaryProbe, 0))
        numProbes--;
    }
    instance_create_layer(x, y, "Instances", obj_stationaryProbe);
    numProbes++;
}
if (hsp != 0 || vsp != 0) {
    currentState = MOVING;
}
if (hsp == 0 && vsp == 0) {
    currentState = IDOL;
}
swimmerCollisions(obj_wall);
x += hsp;
y += vsp;
show_debug_message(string(numProbes))