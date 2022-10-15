if(obj_disabilities.normal || obj_disabilities.rightHandControls || obj_disabilities.poorReactivity){
playerTwoMovement();
}else{
playerOneMovement();
}
hsp = (keyRight - keyLeft) * mvspeed;
vsp = (keyDown - keyUp) * mvspeed;
RightHand();
LeftHand();
Standard();
PoorReactivity()
if(hsp!=0 || vsp !=0){
	if(!audio_is_playing(snd_swimming)){
		audio_play_sound(snd_swimming,1,0)
	}
	currentState = MOVING;
}
if(hsp==0 && vsp==0){
	audio_stop_sound(snd_swimming)
	currentState = IDOL;
}
swimmerCollisions(obj_wall);
x+=hsp;
y+=vsp;
