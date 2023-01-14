function findRoomNumber(){
	for (i = 0; i< array_length(obj_levelTracker.rooms); i++){
		if(room == obj_levelTracker.rooms[i]){
			return i;
		}
	}
}
