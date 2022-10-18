if(anglerTutorialActive && !anglerTutorialTrial && !instance_exists(obj_trainerLight)){
timer++;
if(timer >= 5){
	if (point_distance(x, y, 4300, 800) > 1) {
	instance_create_layer(x,y,"Instances", obj_trainerLight);
    x = 4300;
    y = 800;
}
anglerTutorialTrial = true;
}
}
alarm[0] = 60;





























