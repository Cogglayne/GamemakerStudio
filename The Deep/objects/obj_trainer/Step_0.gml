
// sets the trainers location depending on which tutorial is 
// active and which part of the tutorial is active

// monster tutorial
if(monsterTutorialActive && !monsterTutorialTrial){
	if (point_distance(x, y, 500, 992) > 1) {
	stopTrainerSounds()
	playSound(snd_monsterTutorialActive)
    x = 500;
    y = 992;
}
	if (obj_swimmer.numMonsterBarriers <1){
	instance_create_layer(x+100,y,"Instances",obj_swimmerMonsterBarrier);
	obj_swimmer.numMonsterBarriers++;		
}
}

if(monsterTutorialActive && monsterTutorialTrial){
	if (point_distance(x, y, 1024, 300) > 1) {
	stopTrainerSounds()
	playSound(snd_monsterTutorialTrial)
    x = 1024;
    y = 300;
}
}
// mine tutorial
if (mineTutorialActive && !mineTutorialTrial){
	if (point_distance(x,  y, 1024, 1200) > 1) {
	stopTrainerSounds()
	playSound(snd_mineTutorialActive)
    x = 1024;
    y = 1200;
}
	if( obj_swimmer.numMineBarriers <1){
	instance_create_layer(x,y-140,"Instances",obj_swimmerMineBarrier);
	obj_swimmer.numMineBarriers++;
}
}
if (mineTutorialActive && mineTutorialTrial){
	if (point_distance(x, y, 1600, 992) > 1) {
	stopTrainerSounds()
	playSound(snd_mineTutorialTrial)
    x = 1600;
    y = 992;
}
}
// evolved monster tutorial
if(evolvedMonsterTutorialOneActive && !evolvedMonsterTutorialTrialOne){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1700, 850) > 1) {
	stopTrainerSounds()
	playSound(snd_evolvedMonsterTutorialOneActive)
    x = 1700;
    y = 850;
}
	if (obj_swimmer.numMineBarriers <1){
	instance_create_layer(x,y-140,"Instances",obj_swimmerMineBarrier);
	obj_swimmer.numMineBarriers++;		
}
}
if(evolvedMonsterTutorialOneActive && evolvedMonsterTutorialTrialOne){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1024, 300) > 1) {
	stopTrainerSounds()
	playSound(snd_evolvedMonsterTutorialTrialOne)
    x = 1024;
    y = 300;
}
}

if(evolvedMonsterTutorialTwoActive && !evolvedMonsterTutorialTrialTwo){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 2000, 700) > 1) {
	stopTrainerSounds()
	playSound(snd_evolvedMonsterTutorialTwoActive)
    x = 2000;
    y = 700;
}
	if (obj_swimmer.numMonsterBarriers <1){
	instance_create_layer(x-100,y,"Instances",obj_swimmerMonsterBarrier);
	obj_swimmer.numMonsterBarriers++;		
}
}

if(evolvedMonsterTutorialTwoActive && evolvedMonsterTutorialTrialTwo){
	sprite_index = spr_blackswimmerIdleLeft
	if (point_distance(x, y, 1024, 300) > 1) {
	stopTrainerSounds()
	playSound(snd_evolvedMonsterTutorialTrialTwo)
    x = 1024;
    y = 300;
}
}
// probe tutorial
if(probeTutorialActive && !probeTutorialTrial){
	sprite_index = spr_blackswimmerIdleRight
	if (point_distance(x, y, 1200, 500) > 1) {
	stopTrainerSounds()
	playSound(snd_probeTutorialActive)
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
	if (point_distance(x, y, 1024, 800) > 1) {
	stopTrainerSounds()
	playSound(snd_probeTutorialTrial)
    x = 1024;
    y = 800;
}
}

// angler tutorial
if(anglerTutorialActive && !anglerTutorialTrial){
	sprite_index = spr_blackswimmerIdleLeft
	if(timer<=0){
	if (point_distance(x, y, 4300, 1800) > 1) {
	stopTrainerSounds()
	playSound(snd_anglerTutorialActive)
    x = 4300;
    y = 1800;
}
	}
if(point_distance(x,y,obj_horrorTutorial.x,obj_horrorTutorial.y) <= 900){
instance_destroy(obj_trainerLight)
}
}
if(anglerTutorialActive && anglerTutorialTrial){
	sprite_index = spr_blackswimmerIdleLeft
}
// checks if all the tutorials have been completed
if(evolvedMonsterTutorialOneCleared || evolvedMonsterTutorialTwoCleared || monsterTutorialCleared || mineTutorialCleared || probeTutorialCleared || anglerTutorialCleared){
room_goto(TutorialClear)
}





















