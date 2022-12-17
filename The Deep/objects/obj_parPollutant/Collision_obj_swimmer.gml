audio_play_sound(snd_pickup, 1, 0)
obj_swimmer.numPollutants--;
obj_levelTracker.swimmerOneNumPollutants--;
if (obj_disabilities.blindMode) {
    switch (obj_levelTracker.swimmerOneNumPollutants) {
        case 1:
            audio_play_sound(snd_1, 1, 0);
            break;
        case 2:
            audio_play_sound(snd_2, 1, 0);
            break;
        case 3:
            audio_play_sound(snd_3, 1, 0);
            break;
        case 4:
            audio_play_sound(snd_4, 1, 0);
            break;
        case 5:
            audio_play_sound(snd_5, 1, 0);
            break;
        case 6:
            audio_play_sound(snd_6, 1, 0);
            break;
        case 7:
            audio_play_sound(snd_7, 1, 0);
            break;
    }
}
instance_destroy(self);
if (obj_levelTracker.swimmerOneSinglePlayer == false) {
    if (obj_levelTracker.swimmerOneNumPollutants == 0 && obj_levelTracker.swimmerTwoNumPollutants == 0) {
	if(room == MultiplayerTutorial){
		room_goto(MainMenu)
	}else{
		room_goto(WinTwoPlayers);		
	}
    }
} else if (obj_levelTracker.swimmerOneSinglePlayer == true) {
    if (obj_swimmer.numPollutants == 0) {
        if (obj_levelTracker.firstRun && obj_levelTracker.indirectCompetition) {
			stopGameSounds()
			obj_levelTracker.firstRun = false;
            if (instance_exists(obj_swimmer)) {
                if (obj_swimmer.timer < obj_levelTracker.timer) {
                    obj_levelTracker.timer = obj_swimmer.timer;
                }
            }
            instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("Whales")
            instance_deactivate_layer("AmbientBackground")
            instance_activate_layer("Transition")
        } else {
            if (instance_exists(obj_swimmer)) {
                if (obj_swimmer.timer < obj_levelTracker.timer) {
                    obj_levelTracker.timer = obj_swimmer.timer;
                }
            }
            setLevelData()
            stopGameSounds()
            instance_activate_layer("Pollutants")
            instance_activate_layer("Puzzle")
            if (obj_disabilities.blindMode) {
                audio_play_sound(snd_puzzle, 1, 0);
            }
            instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("Whales")
            instance_deactivate_layer("AmbientBackground")
        }
    }
}