audio_play_sound(snd_pickupPollutant, 1, 0)
obj_swimmerOne.numPollutants--;
obj_levelTracker.swimmerOneNumPollutants--;
if (obj_options.textToSpeak) {
    switch (obj_levelTracker.swimmerOneNumPollutants) {
        case 1:
            audio_play_sound(snd_onePollutantRemaining, 1, 0);
            break;
        case 2:
            audio_play_sound(snd_twoPollutantsRemaining, 1, 0);
            break;
        case 3:
            audio_play_sound(snd_threePollutantsRemaining, 1, 0);
            break;
        case 4:
            audio_play_sound(snd_fourPollutantsRemaining, 1, 0);
            break;
        case 5:
            audio_play_sound(snd_fivePollutantsRemaining, 1, 0);
            break;
        case 6:
            audio_play_sound(snd_sixPollutantsRemaining, 1, 0);
            break;
        case 7:
            audio_play_sound(snd_sevenPollutantsRemaining, 1, 0);
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
    if (obj_swimmerOne.numPollutants == 0) {
        if (obj_options.firstRun && obj_options.playALevelBackToBack) {
			stopGameSounds()
			obj_options.firstRun = false;
            if (instance_exists(obj_swimmerOne)) {
                if (obj_swimmerOne.timer < obj_levelTracker.timer) {
                    obj_levelTracker.timer = obj_swimmerOne.timer;
                }
            }
            instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("Whales")
            instance_deactivate_layer("AmbientBackground")
            instance_activate_layer("Transition")
        } else {
            if (instance_exists(obj_swimmerOne)) {
                if (obj_swimmerOne.timer < obj_levelTracker.timer) {
                    obj_levelTracker.timer = obj_swimmerOne.timer;
                }
            }
            setLevelData()
            stopGameSounds()
			audio_play_sound(snd_playerWin, 1, 0)
			room_goto(Win);
        }
    }
}