function stopGameSounds() {
	audio_group_stop_all(GameSounds)
    if (instance_exists(obj_parHorror)) {
        obj_parHorror.state = 0;
    }
    if (instance_exists(obj_parPollutant)) {
        obj_parPollutant.state = 0;
    }
    if (instance_exists(obj_parProbe)) {
        obj_parProbe.state = 0;
    }
    if (instance_exists(obj_parPatrollingEnemy)) {
        obj_parPatrollingEnemy.state = 0;
    }
    if (instance_exists(obj_parAmbient)) {
        obj_parAmbient.state = 0;
    }
	if (instance_exists(obj_parBarrier)) {
	    obj_parBarrier.state = 0;
    }
	if (instance_exists(obj_parSwimmer)) {
	    obj_parSwimmer.state = 0;
    }	
}

function stopButtonSounds() {
	audio_group_stop_all(ButtonSounds)
}

function stopRoomText() {
	audio_group_stop_all(RoomTextSounds)
}

function stopTrainerSounds() {
	audio_group_stop_all(TrainerSounds)
}