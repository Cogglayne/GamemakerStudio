// sets swimmer movement
if (obj_options.options[2] || obj_options.options[1] || obj_options.options[3]) {
    ArrowKeys();
} else if (obj_options.options[0]) {
	WASD();
}
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
// handles creating swimmer objects
RightHand();
LeftHand();
Standard();
// starts playing the swimmers movement sound
if(state == 0 && singleplayer){
audio_play_sound(snd_swimming,1,1)
state = 1;
}
// sets the state for the swimmer
if (hsp != 0 || vsp != 0) {
    // increases gain when moving
	audio_sound_gain(snd_swimming,.8,100)
    currentState = MOVING;
}
if (hsp == 0 && vsp == 0) {
    // reduces gain when stopped
	audio_sound_gain(snd_swimming,.3,100)
    currentState = IDOL;
}
// collisions with wall
swimmerCollisions(obj_wall);
// move swimmer
x += hsp;
y += vsp;
// checks if swimimer has destroyed all enemies
if (isPlaying && obj_options.options[13]) {
    if (instance_number(obj_monster) == 0 && instance_number(obj_mine) == 0 && instance_number(obj_monsterEvolved) == 0) {
        room_goto(AlternateWin)
    }
}