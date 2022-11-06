// multiplayer
if(obj_levelTracker.swimmerOneSinglePlayer == false){
// destroys player one objects
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
// lose if player two is also dead
if(!instance_exists(obj_swimmerTwo)){
room_goto(LoseTwoPlayers)
}
}
// checks if enemy can hurt player
if(obj_levelTracker.swimmerOneSinglePlayer){
if(!obj_microtransactions.extraLife  && !tutorialEnemy){
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
obj_levelTracker.textShouldBeShowing = true;
// singleplayer
if (obj_levelTracker.swimmerOneSinglePlayer == true){
// determines how death should be handled
if(room == TutorialMonster || room == TutorialMovement){
room_goto(TutorialFailed)
}
resetSound()
// layer manipulation
instance_activate_layer("Extra")
instance_deactivate_layer("Instances")
instance_deactivate_layer("LightInstance")
instance_deactivate_layer("Whales")
instance_deactivate_layer("AmbientBackground")
}	
}
}


 