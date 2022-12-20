if(mine){
	if(swimmer == obj_swimmerOne && instance_exists(obj_swimmerOne)){
		obj_swimmerOne.numMineBarriers--;
	}else if (swimmer == obj_swimmerTwo && instance_exists(obj_swimmerTwo)){
		obj_swimmerTwo.numMineBarriers--;
	}
}else if (monster){
	if(swimmer == obj_swimmerOne && instance_exists(obj_swimmerOne)){
		obj_swimmerOne.numMonsterBarriers--;
	}else if (swimmer == obj_swimmerTwo && instance_exists(obj_swimmerTwo)){
		obj_swimmerTwo.numMonsterBarriers--;
	}
}
audio_emitter_free(barrierEmitter)





















