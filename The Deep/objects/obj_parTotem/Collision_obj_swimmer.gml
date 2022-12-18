if(swimmerOneTotem){
	audio_play_sound(snd_totem, 1, 0)
	if(spd){
		obj_swimmer.mvspeed += 2;
	}else if (vision){
		obj_light.xBoundry += .2;
		obj_light.yBoundry += .2;
	}else if (cursedSpd){
		obj_swimmer.mvspeed += 4;
		obj_light.xBoundry -= .4;
		obj_light.yBoundry -= .4;
	}else if (cursedVision){
		obj_swimmer.mvspeed -= 4;
		obj_light.xBoundry += .4;
		obj_light.yBoundry += .4;
	}else if (insanity){
		obj_swimmer.mvspeed -= 4;
		obj_light.xBoundry -= .4;
		obj_light.yBoundry -= .4;
	}
	with(obj_parTotem){
		if(swimmerOneTotem){
			instance_destroy()
		}
	}
}






