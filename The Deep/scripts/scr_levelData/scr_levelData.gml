function setLevelData(roomNumber) {
	setRoom(roomNumber);
}

function setRoom(roomNumber) {
	if(room == obj_levelTracker.rooms[roomNumber]){
		if(obj_levelTracker.timer < obj_levelTracker.times[roomNumber]){
			obj_levelTracker.times[roomNumber] = obj_levelTracker.timer;
		}
        if (obj_swimmerOne.hardMode == true) {
            obj_levelTracker.challengeModes[roomNumber] = true;
        }		
	}	
}

