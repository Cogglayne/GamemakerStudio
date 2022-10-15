obj_swimmerTwo.numPollutants--;
obj_levelTracker.swimmerTwoNumPollutants--;
instance_destroy(self);
if(obj_levelTracker.swimmerOneNumPollutants == 0 && obj_levelTracker.swimmerTwoNumPollutants == 0){
	room_goto(WinTwoPlayers);
}

