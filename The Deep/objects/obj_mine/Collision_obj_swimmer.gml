if(obj_levelTracker.swimmerOneSinglePlayer == false){
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
instance_destroy(other)
instance_destroy(obj_light)
if(instance_exists(obj_probe)){
	instance_destroy(obj_probe)
	instance_destroy(obj_probeLight)
}
if(instance_exists(obj_swimmerMonsterBarrier)){
instance_destroy(obj_swimmerMonsterBarrier)
}
if(instance_exists(obj_swimmerMineBarrier)){
instance_destroy(obj_swimmerMineBarrier)
}
if(!instance_exists(obj_swimmerTwo)){
room_goto(LoseTwoPlayers)
}
}
if(!obj_microtransactions.extraLife  && !tutorialEnemy){
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
obj_levelTracker.textShouldBeShowing = true;
if (obj_levelTracker.swimmerOneSinglePlayer == true){
if(room == TutorialMine || room == TutorialMovement){
room_goto(TutorialFailed)
}
resetSound()
instance_activate_layer("Extra")
instance_deactivate_layer("Instances")
instance_deactivate_layer("LightInstance")
instance_deactivate_layer("Whales")
instance_deactivate_layer("AmbientBackground")
}
}

