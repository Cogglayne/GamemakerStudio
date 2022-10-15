if( place_meeting(x, y, obj_greenRed_yellow) ) {
  obj_pollutantPuzzleTracker.greenRedSolved = true;
}else{
  obj_pollutantPuzzleTracker.greenRedSolved = false;
}
if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_yellow) && !soundHasBeenPlayed){
		audio_play_sound(snd_yellow,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}
if(!instance_exists(obj_greenRed_yellow)){
obj_pollutantPuzzleTracker.greenRedSolved = true;
}






















