if(state = 0 && point_distance(obj_swimmer.x,obj_swimmer.y,x,y) < audioMaxDistanceToBeHeard){
	audio_play_sound_on(cursedSpeedEmmiter,snd_cursedRecklessness,0,1)
	state = 1
}
if(point_distance(obj_swimmer.x,obj_swimmer.y,x,y) > audioMaxDistanceToBeHeard){
	state = 0;
}


























