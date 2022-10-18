// if single player is active and right hand controls are active
// destroys or creates the swimmer's light
if (singleplayer == true){
if(obj_disabilities.rightHandControls){
audio_play_sound(snd_light,1,0)
if (instance_exists(obj_light)){
instance_destroy(obj_light)
}else{
instance_create_layer(obj_swimmer.x,obj_swimmer.y+150,"Instances", obj_lightOnOffText);	
instance_create_layer(obj_swimmer.x,obj_swimmer.y,"Instances", obj_light);	
obj_light.xBoundry = obj_levelTracker.lightX;
obj_light.yBoundry = obj_levelTracker.lightY;
}
}
}























