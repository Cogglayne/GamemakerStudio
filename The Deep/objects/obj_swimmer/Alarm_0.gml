if(obj_microtransactions.timerDelay == false && room!=Tutorial){
	timer++;
	switch(timer){
		case 10:
		audio_play_sound(snd_tenSeconds,1,0)
		break;
		case 20:
		audio_play_sound(snd_twentySeconds,1,0)
		break;
		case 30:
		audio_play_sound(snd_thirtySeconds,1,0)
		break;
		case 40:
		audio_play_sound(snd_fortySeconds,1,0)
		break;
		case 50:
		audio_play_sound(snd_fiftySeconds,1,0)
		break;
		case 60:
		audio_play_sound(snd_sixtySeconds,1,0)
		break;
		case 70:
		audio_play_sound(snd_seventySeconds,1,0)
		break;
		case 80:
		audio_play_sound(snd_eigthySeconds,1,0)
		break;
		case 90:
		audio_play_sound(snd_ninetySeconds,1,0)
		break;
		case 100:
		audio_play_sound(snd_oneHundredSeconds,1,0)
		break;
	}
}
alarm[0] = 60;




