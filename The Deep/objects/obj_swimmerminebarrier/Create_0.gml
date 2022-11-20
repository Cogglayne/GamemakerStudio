mineBarrierEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 300;
audioStartsToDropAt = 100;
audio_emitter_position(mineBarrierEmmiter, x, y, 0)
audio_emitter_falloff(mineBarrierEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
text = "[Barrier Hums]"


// sprite selection
if(obj_levelTracker.variableObjectives){
	sprite_index = spr_swimmerMineBarrierDestroy
}






















