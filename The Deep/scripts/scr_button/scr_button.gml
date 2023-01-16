function changeOptionStatus(index){
	if(obj_options.options[index] == false){
		obj_options.options[index] = true;
	} else if (obj_options.options[index] == true){
		obj_options.options[index] = false;
	}
	changeActivated()
}
function changeMicrotransactionStatus(index1, index2, toggled){
	if(toggled){
		if(obj_microtransactions.microtransactions[index2] == false){
			obj_microtransactions.microtransactions[index2] = true;
		} else if (obj_microtransactions.microtransactions[index2] == true){
			obj_microtransactions.microtransactions[index2] = false;
		}
		changeActivated()
	}else{
		if (index1 != noone){
			obj_microtransactions.microtransactions[index1] = true;
		}
		if (index2 != noone){
			obj_microtransactions.microtransactions[index2] = true;
		}
		bought = true;
	}
}
function changeActivated() {
    if (activated == false) {
        activated = true;
    } else if (activated == true) {
        activated = false;
    }
}

function activateExtraLifeOrSkipWaitTime(microtransaction) {
    obj_microtransactions.microtransactions[4] = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    if (microtransaction == "Extra") {
        instance_deactivate_layer("Extra")
    } else if (microtransaction == "Skip") {
        instance_destroy(obj_wait)
        instance_deactivate_layer("Wait")
    }
}

function setTutorialRoom(nextRoom) {
    obj_levelTracker.tutorialRoom = nextRoom;
    room_goto(nextRoom)
}

function setDifficulty(difficulty) {
    obj_levelTracker.levelDifficulty = difficulty
    room_goto(targetRoom);
}
function changeBackgroundNoiseStatus() {
    if (audio_is_playing(snd_background)) {
        audio_stop_sound(snd_background)
    } else {
        audio_play_sound(snd_background, 0, 1)
    }
}
function changeControlScheme(inst1, inst2, inst3, index1, index2, index3){
	inst1.activated = true;
	inst2.activated = false;
	inst3.activated = false;
	obj_options.options[index1] = true;
	obj_options.options[index2] = false;
	obj_options.options[index3] = false;
}
