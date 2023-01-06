if(swimmerOneTotem){
	audio_play_sound(snd_totem, 1, 0)
	if(spd){
		obj_swimmerOne.mvspeed += 2;
	}else if (vision){
		obj_playerOneLight.xBoundry += .2;
		obj_playerOneLight.yBoundry += .2;
	}else if (cursedSpd){
		obj_swimmerOne.mvspeed += 4;
		obj_playerOneLight.xBoundry -= .4;
		obj_playerOneLight.yBoundry -= .4;
	}else if (cursedVision){
		obj_swimmerOne.mvspeed -= 3;
		obj_playerOneLight.xBoundry += .4;
		obj_playerOneLight.yBoundry += .4;
	}else if (insanity){
		obj_swimmerOne.mvspeed -= 3;
		obj_playerOneLight.xBoundry -= .4;
		obj_playerOneLight.yBoundry -= .4;
		obj_swimmerOne.hardMode = true;
	}
	with(obj_parTotem){
		if(swimmerOneTotem){
			instance_destroy()
		}
	}
}






