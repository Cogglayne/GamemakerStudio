// Only increment when the trainer's light is absent and the trial is not active
if(anglerTutorialActive && !anglerTutorialTrial && !instance_exists(obj_trainerLight)){
timer++;
// destroys the light and reloactes the trainer
if(timer == 5){
	if (point_distance(x, y, 4300, 300) > 1) {
	instance_create_layer(x,y,"Instances", obj_trainerLight);
    x = 4300;
    y = 300;
}
}
// destroys the light, relocates the trainer, and starts the player's trial
if(timer == 10){
	if (point_distance(x, y, 4300, 1700) > 1) {
	instance_create_layer(x,y,"Instances", obj_trainerLight);
	stopTrainerSounds()
	playSound(snd_anglerTutorialTrial)
    x = 4300;
    y = 1700;
}
anglerTutorialTrial = true;
}
}
alarm[0] = 60;





























