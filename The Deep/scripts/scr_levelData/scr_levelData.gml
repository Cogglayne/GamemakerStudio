function setLevelData(roomNumber) {
	levelFour(roomNumber);
}

function levelFour(roomNumber) {
	if(room == obj_levelTracker.levelFourRooms[roomNumber]){
		if(obj_levelTracker.timer < obj_levelTracker.levelFourTimes[roomNumber]){
			obj_levelTracker.levelFourTimes[roomNumber] = obj_levelTracker.timer;
		}
        if (obj_swimmerOne.hardMode == true) {
            obj_levelTracker.levelFourChallengeModes[roomNumber] = true;
        }		
	}	
    if (obj_levelTracker.levelFourChallengeModes[1] && obj_levelTracker.levelFourChallengeModes[2] && obj_levelTracker.levelFourChallengeModes[3]) {
        obj_levelTracker.levelFourChallengeModes[0] = true;
    }
}

