obj_swimmerTwo.numPollutants--;
obj_levelTracker.swimmerTwoNumPollutants--;
instance_destroy(self);
if (obj_levelTracker.swimmerOneNumPollutants == 0 && obj_levelTracker.swimmerTwoNumPollutants == 0) {
	if(room == MultiplayerTutorial){
		room_goto(MainMenu)
	}else{
		room_goto(WinTwoPlayers);		
	}
}
