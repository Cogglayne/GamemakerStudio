if(instance_exists(obj_swimmer)){
if(obj_swimmer.singleplayer && obj_disabilities.blindMode){
if(state = 0 && point_distance(obj_swimmer.x,obj_swimmer.y,x,y) < audioMaxDistanceToBeHeard){
	audio_play_sound_on(insanityEmmiter,snd_Insanity,0,1)
	state = 1
}
if(point_distance(obj_swimmer.x,obj_swimmer.y,x,y) > audioMaxDistanceToBeHeard){
	state = 0;
}
}
}



























