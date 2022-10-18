if(!obj_microtransactions.extraLife && !tutorialEnemy){
audio_play_sound(snd_playerdie,1,0)
audio_stop_sound(snd_swimming)
obj_levelTracker.textShouldBeShowing = true;
resetSound()
if(room == Tutorial){
room_goto(TutorialFailed)
}
instance_activate_layer("Extra")
instance_deactivate_layer("Instances")
instance_deactivate_layer("LightInstance")
instance_deactivate_layer("Whales")
instance_deactivate_layer("AmbientBackground")
}











