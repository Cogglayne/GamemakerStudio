if(position_meeting(mouse_x,mouse_y,self) && obj_disabilities.blindMode){
	if(!audio_is_playing(snd_red) && !soundHasBeenPlayed){
		audio_play_sound(snd_red,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}





























