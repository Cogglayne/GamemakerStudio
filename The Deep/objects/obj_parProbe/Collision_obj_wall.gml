changeTutorialStatus(10,11,5,"Excellent Work, Launch another probe",snd_probeSecondLaunch,2)
instance_destroy(self)
if(swimmer == obj_swimmerOne){
	obj_swimmerOne.probeExists = false;
}else if (swimmer == obj_swimmerTwo){
	obj_swimmerTwo.numProbes--;
}









