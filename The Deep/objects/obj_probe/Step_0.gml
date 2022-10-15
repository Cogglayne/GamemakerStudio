if(state = 0){
	audio_play_sound_on(probeEmmiter,snd_probeCreation,1,1)
	state = 1
}
audio_emitter_position(probeEmmiter,x,y,0)
if collision_circle(x, y, 145, obj_fishFriendLeft, false, true)
{
   obj_fishFriendLeft.visible = true;
}
if collision_circle(x, y, 145, obj_fishFriendRight, false, true)
{
   obj_fishFriendRight.visible = true;
}











