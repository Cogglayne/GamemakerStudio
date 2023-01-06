function changeVariableStatus(variable) {
    if (variable == false) {
        return true;
    } else if (variable == true) {
        return false;
    }
}

function changeBackgroundNoiseStatus() {
    if (audio_is_playing(snd_background)) {
        audio_stop_sound(snd_background)
    } else {
        audio_play_sound(snd_background, 0, 1)
    }
}

function findRoomNumber(){
	for (i = 0; i< array_length(obj_levelTracker.rooms); i++){
		if(room == obj_levelTracker.rooms[i]){
			return i;
		}
	}
}
