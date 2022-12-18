if(mine){
	if(swimmer == obj_swimmer && instance_exists(obj_swimmer)){
		obj_swimmer.numMineBarriers--;
	}else if (swimmer == obj_swimmerTwo && instance_exists(obj_swimmerTwo)){
		obj_swimmerTwo.numMineBarriers--;
	}
}else if (monster){
	if(swimmer == obj_swimmer && instance_exists(obj_swimmer)){
		obj_swimmer.numMonsterBarriers--;
	}else if (swimmer == obj_swimmerTwo && instance_exists(obj_swimmerTwo)){
		obj_swimmerTwo.numMonsterBarriers--;
	}
}
audio_emitter_free(barrierEmitter)





















