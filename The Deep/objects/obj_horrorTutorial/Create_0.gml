anglerLight = instance_create_layer(x,y,"Instances", obj_anglerTutorialLight)
text = "[The Angler Growls]";
tutorialEnemy = true;
anglerEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 600;
audioStartsToDropAt = 300;
audio_emitter_position(anglerEmmiter,x,y,0)
audio_emitter_falloff(anglerEmmiter,audioStartsToDropAt,audioMaxDistanceToBeHeard,1)
state = 0;










