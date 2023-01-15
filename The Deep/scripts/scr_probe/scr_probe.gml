function probeDestruction(){
	instance_destroy(self)
	if(swimmer == obj_swimmerOne){
		obj_swimmerOne.probeExists = false;
	}else if (swimmer == obj_swimmerTwo){
		obj_swimmerTwo.numProbes--;
	}	
}