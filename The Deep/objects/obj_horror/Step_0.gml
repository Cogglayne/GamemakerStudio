if(state = 0 && !audio_is_playing(snd_horror)){
	audio_play_sound_on(anglerEmmiter,snd_horror,1,1)
	state = 1
}
audio_emitter_position(anglerEmmiter,x,y,0)
if(instance_exists(obj_light)){
	direction = point_direction(x,y,obj_swimmer.x,obj_swimmer.y); 
	if(obj_microtransactions.extraLife){
	speed = 0;
	}else{
	if(obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity){
	speed = 5;
	}else{
	speed = 7;//7
	}
	}
}else{
	speed = 0;
}
if(lifeTime == 0){
	instance_destroy(self)
}






