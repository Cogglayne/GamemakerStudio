if( place_meeting(x, y, obj_whiteBlack_grey) ) {
  obj_pollutantPuzzleTracker.whiteBlackSolved = true;
}else{
 obj_pollutantPuzzleTracker.whiteBlackSolved = false;
}
if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_grey) && !soundHasBeenPlayed){
		audio_play_sound(snd_grey,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}
if(!instance_exists(obj_whiteBlack_grey)){
obj_pollutantPuzzleTracker.whiteBlackSolved = true;
}






















