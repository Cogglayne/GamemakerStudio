// movement
if(obj_microtransactions.enemiesSlowed || obj_disabilities.poorReactivity){
hsp = 5;
vsp = 1;
}else{
hsp = 6;//6
vsp = 2;//2
}
// tutorial status
tutorialEnemy = false;
// text
text = "[Evolved Monster Bellows]";
// sound
evolvedMonsterEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 600;
audioStartsToDropAt = 300;
audio_emitter_position(evolvedMonsterEmmiter,x,y,0)
audio_emitter_falloff(evolvedMonsterEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;

