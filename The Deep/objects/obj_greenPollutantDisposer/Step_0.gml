if( place_meeting(x, y, obj_yellowBlue_green) ) {
  obj_pollutantPuzzleTracker.yellowBlueSolved = true;
}else{
  obj_pollutantPuzzleTracker.yellowBlueSolved = false;
}
if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_green) && !soundHasBeenPlayed){
		audio_play_sound(snd_green,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}
if(!instance_exists(obj_yellowBlue_green)){
obj_pollutantPuzzleTracker.yellowBlueSolved = true;
}



















