if( place_meeting(x, y, obj_redYellow_orange) ) {
  obj_pollutantPuzzleTracker.redYellowSolved = true;
}else{
obj_pollutantPuzzleTracker.redYellowSolved = false;
}
if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_orange) && !soundHasBeenPlayed){
		audio_play_sound(snd_orange,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}
if(!instance_exists(obj_redYellow_orange)){
obj_pollutantPuzzleTracker.redYellowSolved = true;
}




















