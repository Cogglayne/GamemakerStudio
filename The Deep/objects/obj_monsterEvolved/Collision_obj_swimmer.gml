if(obj_levelTracker.swimmerOneSinglePlayer == false){
// plays death sound and stops swimming
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
// destroys swimmer object
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
// checks if both swimmers are dead
if(!instance_exists(obj_swimmerTwo)){
room_goto(LoseTwoPlayers)
}
}
if(!obj_microtransactions.extraLife && !tutorialEnemy){
// if the extra life cosmetic life is not active and the evolve
// monster is not a tutorial enemy
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
// shows death text
obj_levelTracker.textShouldBeShowing = true;
if (obj_levelTracker.swimmerOneSinglePlayer == true){
if(room == TutorialMonsterEvolvedOne || room == TutorialMonsterEvolvedTwo){
room_goto(TutorialFailed)
}
// stops sounds
resetSound()
// layer manipulation
instance_activate_layer("Extra")
instance_deactivate_layer("Instances")
instance_deactivate_layer("LightInstance")
instance_deactivate_layer("Whales")
instance_deactivate_layer("AmbientBackground")
}
}


	


 