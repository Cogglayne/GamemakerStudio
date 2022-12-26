function setDifficultyOrTutorialRoomAndGoToRoom(object, currentRoom, difficulty){
	if(currentRoom == noone){
		object.levelDifficulty = difficulty;
	}else if(difficulty == noone){
		object.tutorialRoom = currentRoom;
	}
	room_goto(targetRoom)
}
function extraLifeOrSkipWaitActivated(){
    obj_microtransactions.extraLife = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    instance_deactivate_layer("Extra")	
}
function changeTest(variable){
	return variable;
	room_goto(targetRoom)
}