// sets swimmer movement
if (obj_disabilities.normal || obj_disabilities.rightHandControls || obj_disabilities.poorReactivity) {
    playerTwoMovement();
} else {
    playerOneMovement();
}
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
// handles creating swimmer objects
RightHand();
LeftHand();
Standard();
PoorReactivity()
// sets the state for the swimmer
if (hsp != 0 || vsp != 0) {
    // plays swimming sound when the swimmer is moving
    if (singleplayer) {
        if (!audio_is_playing(snd_swimming)) {
            audio_play_sound(snd_swimming, 1, 0)
        }
    }
    currentState = MOVING;
}
if (hsp == 0 && vsp == 0) {
    // stops swimming sound when swimmer stops
    audio_stop_sound(snd_swimming)
    currentState = IDOL;
}
// collisions with wall
swimmerCollisions(obj_wall);
// move swimmer
x += hsp;
y += vsp;
// checks if swimimer has destroyed all enemies
if (isPlaying && obj_levelTracker.variableObjectives) {
    if (instance_number(obj_monster) == 0 && instance_number(obj_mine) == 0 && instance_number(obj_monsterEvolved) == 0) {
        room_goto(AlternateWin)
    }
}
show_debug_message(string(avoidanceCharges))