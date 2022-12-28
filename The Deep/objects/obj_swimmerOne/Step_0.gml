// sets swimmer movement
if (obj_options.mouseAndArrowKeyControls || obj_options.arrowKeyControls || obj_options.decreaseReactionTimeRequired) {
    ArrowKeys();
} else if (obj_options.WASDControls) {
	WASD();
}
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
// handles creating swimmer objects
RightHand();
LeftHand();
Standard();
if(state == 0 && singleplayer){
audio_play_sound(snd_swimming,1,1)
state = 1;
}
// sets the state for the swimmer
if (hsp != 0 || vsp != 0) {
    // plays swimming sound when the swimmer is moving
	audio_sound_gain(snd_swimming,1,100)
    currentState = MOVING;
}
if (hsp == 0 && vsp == 0) {
    // stops swimming sound when swimmer stops
	audio_sound_gain(snd_swimming,.5,100)
    currentState = IDOL;
}
// collisions with wall
swimmerCollisions(obj_wall);
// move swimmer
x += hsp;
y += vsp;
// checks if swimimer has destroyed all enemies
if (isPlaying && obj_options.destroyEnemiesWithBarriers) {
    if (instance_number(obj_monster) == 0 && instance_number(obj_mine) == 0 && instance_number(obj_monsterEvolved) == 0) {
        room_goto(AlternateWin)
    }
}
