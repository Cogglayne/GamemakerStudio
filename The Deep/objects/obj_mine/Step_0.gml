if(state = 0){
	audio_play_sound_on(mineEmmiter,snd_mine,1,1)
	state = 1
}
audio_emitter_position(mineEmmiter,x,y,0)
if(vsp > 0){
audio_emitter_pitch(mineEmmiter, 0.8)
}else{
audio_emitter_pitch(mineEmmiter, 1.2)
}
mineCollision(obj_mineBarrier);
mineTutorialCollision(obj_tutorialMineBarrier)
if(instance_exists(obj_swimmerMineBarrier)){
swimmerMineBarrierCollision(obj_swimmerMineBarrier);
}
if(instance_exists(obj_swimmerTwoMineBarrier)){
swimmerTwoMineBarrierCollision(obj_swimmerTwoMineBarrier);
}

if(instance_exists(obj_trainer)){
if(obj_trainer.mineTutorialActive){
y+=vsp;
}else{
}
}else{
y+=vsp;
}