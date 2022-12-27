function changeVariableStatus(variable){
if(variable == false){
if(variable == removeBackgroundNoise){
	audio_stop_sound(snd_background)
}	
return true;
}else if (variable == true){
if(variable == removeBackgroundNoise){
	audio_play_sound(snd_background,0,1)
}	
return false;	
}
}