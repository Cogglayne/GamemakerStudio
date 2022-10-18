function swimmerCollisions(object){
		if place_meeting(x+hsp,y,object){
		xCollision = true
		while(!place_meeting(x+sign(hsp),y,object)){
			x+=sign(hsp);
		}
		hsp = 0;
	}else{
		xCollision = false;
	}
		if place_meeting(x,y+vsp,object){
			yCollision = true
		while(!place_meeting(x,y+sign(vsp),object)){
			y+=sign(vsp);
		}
		vsp = 0;
	}else{
		yCollision = false;
	}
	if((xCollision == true || yCollision == true) && obj_disabilities.blindMode){
		if(!audio_is_playing(snd_wall)){
			audio_play_sound(snd_wall,1,0);
		}
	}else{
		audio_stop_sound(snd_wall)
	}
}
	
// wall collisions
function mineTutorialCollision(object){
		if (place_meeting(x,y+vsp,object)){
	while (!place_meeting(x,y+sign(vsp),object)){
		y += sign(vsp);
	}
if(instance_exists(obj_trainer)){
	if(instance_exists(obj_swimmerMineBarrier) && !obj_trainer.firstBounce){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_mineTutorialMistake,1,0)
	}
	obj_trainer.textTwo = "Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMineBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_mineUp,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the mine down"	
	}
	obj_trainer.firstBounce = false;
}
vsp = -vsp;
}
}
function mineCollision(object){
		if (place_meeting(x,y+vsp,object)){
	while (!place_meeting(x,y+sign(vsp),object)){
		y += sign(vsp);
	}
	if(instance_exists(obj_trainer)){
	if(instance_exists(obj_swimmerMineBarrier)){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_mineTutorialMistake,1,0)
	}
	obj_trainer.textTwo = "Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMineBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_mineDown,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the mine up"	
	}
	}
vsp = -vsp;
}
}
function monsterTutorialCollision(object){
		if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
hsp = -hsp;
if(instance_exists(obj_trainer)){
	if(instance_exists(obj_swimmerMonsterBarrier) && !obj_trainer.firstBounce){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterTutorialMistake,1,0)
	}	
	obj_trainer.textTwo = "Make sure you deploy the barrier in the monster's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMonsterBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterRight,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the monster to the right"	
	}
	obj_trainer.firstBounce = false;
}
image_xscale = -image_xscale;
}
}
function monsterCollision(object){
		if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
hsp = -hsp;
if(instance_exists(obj_trainer)){
	if(instance_exists(obj_swimmerMonsterBarrier)){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterTutorialMistake,1,0)
	}	
	obj_trainer.textTwo = "Make sure you deploy the barriers in the monster's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMonsterBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterLeft,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the monster to the left"	
	}
}
image_xscale = -image_xscale;
}
}
function tutorialMonsterEvolvedCollision(object){
		if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
	if(instance_exists(obj_trainer)){
	if(instance_exists(obj_swimmerMineBarrier) || instance_exists(obj_swimmerMonsterBarrier)){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_evolvedMonsterTutorialMistake,1,0)
	}
	obj_trainer.textTwo = "Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMineBarrier)
	instance_destroy(obj_swimmerMineBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterEvolvedCollision,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the evolved monster right and down"	
	}
	}
hsp = -hsp;
vsp = -vsp;
image_xscale = -image_xscale;
}
}
function monsterEvolvedCollision(object){
		if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
if(instance_exists(obj_trainer)){
if((instance_exists(obj_swimmerMineBarrier) || instance_exists(obj_swimmerMonsterBarrier)) && !obj_trainer.firstBounce){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_evolvedMonsterTutorialMistake,1,0)
	}
	obj_trainer.textTwo = "Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again"	
	instance_destroy(obj_swimmerMineBarrier)
	instance_destroy(obj_swimmerMineBarrier)
	}else{
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_monsterEvolvedTutorialCollision,1,0)
	}
	obj_trainer.textTwo = "Deploy the barrier to redirect the evolved monster left and up"	
	}
	obj_trainer.firstBounce = false;
}
hsp = -hsp;
vsp = -vsp;
image_xscale = -image_xscale;
}
}

// barrier collisions
function swimmerMonsterBarrierCollision(object){
	if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
hsp = -hsp;
image_xscale = -image_xscale;
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
if(instance_exists(obj_trainer)){
	if(obj_trainer.monsterTutorialActive){
	obj_trainer.monsterTutorialTrial = true;
	if(obj_trainer.monsterTutorialTrial && obj_trainer.numHits == 1){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_enemyActive,1,0)
	}
	obj_trainer.textTwo = "Excellent Work, This time the danger is real"
	obj_monster.tutorialEnemy = false;
	}
	if(obj_trainer.monsterTutorialTrial && obj_trainer.numHits == 2){
	obj_trainer.monsterTutorialCleared = true	
	obj_trainer.monsterTutorialActive = false;
	obj_trainer.monsterTutorialTrial = false;
	obj_trainer.mineTutorialActive = true;
	obj_trainer.textTwo = ""
	}
	obj_trainer.numHits++;
	if(obj_trainer.monsterTutorialCleared){
	instance_destroy(obj_monster)
	obj_trainer.firstBounce = true;
	obj_trainer.numHits = 0;
	}
	}
}
}
}
function swimmerMineBarrierCollision(object){
	if (place_meeting(x,y+vsp,object)){
	while (!place_meeting(x,y+sign(vsp),object)){
		y += sign(vsp);
	}
if(instance_exists(obj_trainer)){
	if(obj_trainer.mineTutorialActive){
	obj_trainer.mineTutorialTrial = true;
	if(obj_trainer.mineTutorialTrial && obj_trainer.numHits == 1){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_enemyActive,1,0)
	}
	obj_trainer.textTwo = "Excellent Work, This time the danger is real"
	obj_mine.tutorialEnemy = false;
	}
	if(obj_trainer.mineTutorialTrial && obj_trainer.numHits == 2){
	obj_trainer.mineTutorialCleared = true	
	obj_trainer.mineTutorialActive = false;
	obj_trainer.monsterTutorialTrial = false;
	obj_trainer.evolvedMonsterTutorialOneActive = true;
	obj_trainer.textTwo = ""
	}
	obj_trainer.numHits++;
	if(obj_trainer.mineTutorialCleared){
	instance_destroy(obj_mine)
	obj_trainer.firstBounce = true;
	obj_trainer.numHits = 0;
	}
	}
}
vsp = -vsp;
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
}
}
function monsterEvolvedBarrierCollision(object){
if (place_meeting(x+hsp,y,object)){
while (!place_meeting(x+sign(hsp),y,object)){
x += sign(hsp);
}
hsp = -hsp;
vsp = -vsp;
if(object == obj_swimmerMineBarrier){
if(instance_exists(obj_trainer)){
	if(obj_trainer.evolvedMonsterTutorialOneActive){
	obj_trainer.evolvedMonsterTutorialTrialOne = true;
	if(obj_trainer.evolvedMonsterTutorialTrialOne && obj_trainer.numHits == 1){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_enemyActive,1,0)
	}
	obj_trainer.textTwo = "Excellent Work, This time the danger is real"
	obj_monsterEvolved.tutorialEnemy = false;
	}
	if(obj_trainer.evolvedMonsterTutorialTrialOne && obj_trainer.numHits == 2){
	obj_trainer.evolvedMonsterTutorialOneCleared = true	
	obj_trainer.evolvedMonsterTutorialOneActive = false;
	obj_trainer.evolvedMonsterTutorialTrialOne = false;
	obj_trainer.evolvedMonsterTutorialTwoActive = true;
	obj_monsterEvolved.tutorialEnemy = true;
	obj_trainer.textTwo = ""
	}
	obj_trainer.numHits++;
	if(obj_trainer.evolvedMonsterTutorialOneCleared){
	obj_monsterEvolved.x = 224;
	obj_monsterEvolved.y = 224
	obj_trainer.firstBounce = true;
	obj_trainer.numHits = 0;
	}
	}
}
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
}
if(object == obj_swimmerMonsterBarrier){
	if(instance_exists(obj_trainer)){
	if(obj_trainer.evolvedMonsterTutorialTwoActive){

	obj_trainer.evolvedMonsterTutorialTrialTwo = true;
	if(obj_trainer.evolvedMonsterTutorialTrialTwo && obj_trainer.numHits == 1){
	if(obj_disabilities.blindMode){
	stopTrainerSounds()
	audio_play_sound(snd_enemyActive,1,0)
	}
	obj_trainer.textTwo = "Excellent Work, This time the danger is real"
	obj_monsterEvolved.tutorialEnemy = false;
	}
	if(obj_trainer.evolvedMonsterTutorialTrialTwo && obj_trainer.numHits == 2){
	obj_trainer.evolvedMonsterTutorialTwoCleared = true	
	obj_trainer.evolvedMonsterTutorialTwoActive = false;
	obj_trainer.evolvedMonsterTutorialTrialTwo = false;
	obj_trainer.probeTutorialActive = true;
	obj_trainer.textTwo = ""
	}
	obj_trainer.numHits++;
	if(obj_trainer.evolvedMonsterTutorialTwoCleared){
	instance_destroy(obj_monsterEvolved)
	obj_trainer.numHits = 0;
	}
	}
}
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
}
image_xscale = -image_xscale;
}
}
function swimmerTwoMonsterBarrierCollision(object){
	if (place_meeting(x+hsp,y,object)){
	while (!place_meeting(x+sign(hsp),y,object)){
		x += sign(hsp);
	}
hsp = -hsp;
image_xscale = -image_xscale;
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
obj_swimmerTwo.numMonsterBarriers--;
}
}
function swimmerTwoMineBarrierCollision(object){
	if (place_meeting(x,y+vsp,object)){
	while (!place_meeting(x,y+sign(vsp),object)){
		y += sign(vsp);
	}
vsp = -vsp;
instance_destroy(object)
audio_play_sound(snd_barrierDestruction,1,0)
obj_swimmerTwo.numMineBarriers--;
}
}