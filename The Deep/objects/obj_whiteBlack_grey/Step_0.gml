if(state = 0 && !puzzleActive){
	audio_play_sound_on(whiteBlackEmiter,snd_pollutant,1,1)
	state = 1
}
if(position_meeting(mouse_x,mouse_y,self) && puzzleActive && obj_disabilities.blindMode  && dragged == false){
	if(!audio_is_playing(snd_whiteandblack) && !soundHasBeenPlayed){
		audio_play_sound(snd_whiteandblack,1,0)
		soundHasBeenPlayed = true;
	}
}else{
	soundHasBeenPlayed = false;
}
if (dragged == false){
	exit;
}else{
	x = mouse_x + xx;
	y = mouse_y + yy;
}




















