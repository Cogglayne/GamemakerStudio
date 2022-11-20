monsterBarrierEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 100;
audio_emitter_position(monsterBarrierEmmiter, x, y, 0)
audio_emitter_falloff(monsterBarrierEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
text = "[Barrier Hums]"


// sprite selection
if(obj_levelTracker.variableObjectives){
	sprite_index = spr_swimmerMonsterBarrierDestroy
}






















