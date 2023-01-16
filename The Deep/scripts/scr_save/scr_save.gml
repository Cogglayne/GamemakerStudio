function save() {
    if (file_exists("User.sav")) file_delete("User.sav");
    ini_open("User.sav")
	for (index = 0; index < array_length_1d(obj_levelTracker.times); index++) {
		ini_write_real("Save1","times"+string(index),obj_levelTracker.times[index]);
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.challengeModes); index++) {
		ini_write_real("Save1","challengeModes"+string(index),obj_levelTracker.challengeModes[index]);
	}
	for (index = 0; index < array_length_1d(obj_levelTracker.tutorials); index++) {
		ini_write_real("Save1","tutorials"+string(index),obj_levelTracker.tutorials[index]);
	}	
	for (index = 0; index < array_length_1d(obj_options.options); index++) {
		ini_write_real("Save1","options"+string(index),obj_options.options[index]);
	}	
	for (index = 0; index < 4; index++) {
		ini_write_real("Save1","microtransactions"+string(index),obj_microtransactions.microtransactions[index]);
	}	
	ini_close();
}