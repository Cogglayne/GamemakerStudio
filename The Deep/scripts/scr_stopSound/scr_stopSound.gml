function stopGameSounds() {
	audio_group_stop_all(ambientSounds)
	audio_group_stop_all(enemySounds)
	audio_group_stop_all(playerSounds)
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
}

function stopButtonSounds() {
	audio_group_stop_all(buttonSounds)
}

function stopRoomText() {
	audio_group_stop_all(roomTextSounds)
}

function stopTrainerSounds() {
	audio_group_stop_all(trainerSounds)
}