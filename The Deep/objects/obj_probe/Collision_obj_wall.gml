if(instance_exists(obj_trainer)){
	if(obj_trainer.probeTutorialActive){
	obj_trainer.probeTutorialTrial = true;
	if(obj_trainer.probeTutorialTrial && obj_trainer.numHits == 1){
	obj_trainer.textTwo = "Excellent Work, This time pick a different direction"
	}
	if(obj_trainer.probeTutorialTrial && obj_trainer.numHits == 2){
	obj_trainer.probeTutorialCleared = true	
	obj_trainer.probeTutorialActive = false;
	obj_trainer.probeTutorialTrial = false;
	}
	obj_trainer.numHits++;
	if(obj_trainer.probeTutorialCleared){
	obj_trainer.numHits = 0;
	}
	}
}
instance_destroy(obj_probeLight)
instance_destroy(self)
obj_swimmer.probeExists = false;











