WASD();
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
if (hsp != 0 || vsp != 0) {
    currentState = MOVING;
}
if (hsp == 0 && vsp == 0) {
    currentState = IDOL;
}
swimmerCollisions(obj_wall);
x += hsp;
y += vsp;
