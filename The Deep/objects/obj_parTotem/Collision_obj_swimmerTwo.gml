if(swimmerTwoTotem){
	audio_play_sound(snd_totem, 1, 0)
	if(spd){
		obj_swimmerTwo.mvspeed += 2;
	}else if (vision){
		obj_playerTwoLight.xBoundry += .2;
		obj_playerTwoLight.yBoundry += .2;
	}else if (cursedSpd){
		obj_swimmerTwo.mvspeed += 4;
		obj_playerTwoLight.xBoundry -= .4;
		obj_playerTwoLight.yBoundry -= .4;
	}else if (cursedVision){
		obj_swimmerTwo.mvspeed -= 4;
		obj_playerTwoLight.xBoundry += .4;
		obj_playerTwoLight.yBoundry += .4;
	}
	with(obj_parTotem){
		if(swimmerTwoTotem){
			instance_destroy()
		}
	}
}
