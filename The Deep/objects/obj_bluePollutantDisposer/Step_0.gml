if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_blue) && !soundHasBeenPlayed){
		audio_play_sound(snd_blue,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}




























