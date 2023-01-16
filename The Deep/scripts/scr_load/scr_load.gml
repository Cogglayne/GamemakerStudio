function load() {
    if (file_exists("User.sav")) {
        ini_open("User.sav")
	for (index = 0; index < array_length_1d(obj_levelTracker.times); index++) {
		obj_levelTracker.times[index] = ini_read_real("Save1", "times"+string(index), 0)
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.challengeModes); index++) {
		obj_levelTracker.challengeModes[index] = ini_read_real("Save1", "challengeModes"+string(index), 0)
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.tutorials); index++) {
		obj_levelTracker.tutorials[index] = ini_read_real("Save1", "tutorials"+string(index), 0)
	}	
	for (index = 0; index < array_length_1d(obj_options.options); index++) {
		obj_options.options[index] = ini_read_real("Save1", "options"+string(index), 0)
	}	
	for (index = 0; index < 4; index++) {
		obj_microtransactions.microtransactions[index] = ini_read_real("Save1", "microtransactions"+string(index), 0)
	}	
		ini_close()
    } else {}
}