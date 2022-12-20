barrierEmitter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 100;
audio_emitter_position(barrierEmitter, x, y, 0)
audio_emitter_falloff(barrierEmitter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
isPlayingSound = false;
// sprite selection
if(obj_levelTracker.variableObjectives){
	if(mine){
		sprite_index = spr_swimmerMineBarrierDestroy
	}else if (monster){
		sprite_index = spr_swimmerMonsterBarrierDestroy	
	}
}






















