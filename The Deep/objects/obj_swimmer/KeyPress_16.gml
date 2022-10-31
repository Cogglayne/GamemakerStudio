// if single player is active and normal or poor reactivity is active
// destroys or creates the swimmer's light
if (singleplayer == true){
if(obj_disabilities.normal || obj_disabilities.poorReactivity){
audio_play_sound(snd_light,1,0)
if (instance_exists(obj_light)){
instance_destroy(obj_light)
}else{
	// angler tutorial
	if(instance_exists(obj_trainer)){
	if(obj_trainer.anglerTutorialTrial){
	obj_trainer.numHits++;
	if(obj_trainer.anglerTutorialTrial && obj_trainer.numHits == 1){
	if(obj_disabilities.blindMode){
	stopTrainerSounds();
	audio_play_sound(snd_anglerActivated,1,0)
	}
	obj_trainer.textTwo = "Excellent Work, This time the danger is real\n make sure to swim away from the angler when your light is off"
	obj_horrorTutorial.tutorialEnemy = false;
	}
	if(obj_trainer.anglerTutorialTrial && obj_trainer.numHits == 2){
	obj_levelTracker.anglerTutorialCleared = true	
	instance_destroy(obj_horrorTutorial)
	obj_trainer.numHits = 0;
	room_goto(TutorialClear)
	}
	}
}
instance_create_layer(obj_swimmer.x,obj_swimmer.y+150,"Instances", obj_lightOnOffText);	
instance_create_layer(obj_swimmer.x,obj_swimmer.y,"Instances", obj_light);	
obj_light.xBoundry = obj_levelTracker.lightX;
obj_light.yBoundry = obj_levelTracker.lightY;
}
}
}












