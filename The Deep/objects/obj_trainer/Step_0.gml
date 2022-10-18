
if(monsterTutorialActive && !monsterTutorialTrial){
	if (point_distance(x, y, 1024, 992) > 1) {
    x = 1024;
    y = 992;
}
	if (obj_swimmer.numMonsterBarriers <1){
	instance_create_layer(x+100,y,"Instances",obj_swimmerMonsterBarrier);
	obj_swimmer.numMonsterBarriers++;		
}
}

if(monsterTutorialActive && monsterTutorialTrial){
	if (point_distance(x, y, 1024, 300) > 1) {
    x = 1024;
    y = 300;
}
}

if (mineTutorialActive && !mineTutorialTrial){
	if (point_distance(x, y, 1024, 992) > 1) {
    x = 1024;
    y = 900;
}
	if( obj_swimmer.numMineBarriers <1){
	instance_create_layer(x,y-140,"Instances",obj_swimmerMineBarrier);
	obj_swimmer.numMineBarriers++;
}
}
if (mineTutorialActive && mineTutorialTrial){
	if (point_distance(x, y, 1600, 992) > 1) {
    x = 1600;
    y = 992;
}
}
if(evolvedMonsterTutorialOneActive && !evolvedMonsterTutorialTrialOne){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1024, 700) > 1) {
    x = 1024;
    y = 700;
}
	if (obj_swimmer.numMineBarriers <1){
	instance_create_layer(x,y-140,"Instances",obj_swimmerMineBarrier);
	obj_swimmer.numMineBarriers++;		
}
}
if(evolvedMonsterTutorialOneActive && evolvedMonsterTutorialTrialOne){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1024, 300) > 1) {
    x = 1024;
    y = 300;
}
}

if(evolvedMonsterTutorialTwoActive && !evolvedMonsterTutorialTrialTwo){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1200, 500) > 1) {
    x = 1200;
    y = 500;
}
	if (obj_swimmer.numMonsterBarriers <1){
	instance_create_layer(x-100,y,"Instances",obj_swimmerMonsterBarrier);
	obj_swimmer.numMonsterBarriers++;		
}
}

if(evolvedMonsterTutorialTwoActive && evolvedMonsterTutorialTrialTwo){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1024, 300) > 1) {
    x = 1024;
    y = 300;
}
}
if(probeTutorialActive && !probeTutorialTrial){
	sprite_index = spr_blackswimmerIdleRight
	if (point_distance(x, y, 1200, 500) > 1) {
    x = 1200;
    y = 500;
}
if(!obj_swimmer.probeExists){
	instance_create_layer(x,y,"Instances",obj_probe);
	with(obj_probe){
	direction = 0;
	speed = 5;
}
	obj_swimmer.probeExists = true;
}
}

if(probeTutorialActive && probeTutorialTrial){
	sprite_index = spr_blackswimmerIdleRight
	if (point_distance(x, y, 1024, 300) > 1) {
    x = 1024;
    y = 300;
}
}

//
if(anglerTutorialActive && !anglerTutorialTrial){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 4300, 1800) > 1) {
    x = 4300;
    y = 1800;
}
if(point_distance(x,y,obj_horrorTutorial.x,obj_horrorTutorial.y) <= 900){
instance_destroy(obj_trainerLight)
}
}
if(anglerTutorialActive && anglerTutorialTrial){
	sprite_index = spr_blackswimmerIdleLeft
}
if(evolvedMonsterTutorialOneCleared && evolvedMonsterTutorialTwoCleared && monsterTutorialCleared && mineTutorialCleared && probeTutorialCleared && anglerTutorialCleared){
room_goto(TutorialClear)
}





















