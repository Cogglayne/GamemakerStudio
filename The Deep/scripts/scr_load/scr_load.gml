function load() {
    if (file_exists("User.sav")) {
        ini_open("User.sav")
	for (index = 0; index < array_length_1d(obj_levelTracker.times); index += 1) {
		obj_levelTracker.times[index] = ini_read_real("Save1", "times"+string(index), 0)
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.challengeModes); index += 1) {
		obj_levelTracker.challengeModes[index] = ini_read_real("Save1", "challengeModes"+string(index), 0)
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.tutorials); index += 1) {
		obj_levelTracker.tutorials[index] = ini_read_real("Save1", "tutorials"+string(index), 0)
	}	
		obj_microtransactions.swimmerSkin = ini_read_real("Save1", "swimmerCosmetic", 0)
        obj_microtransactions.newLightEffect = ini_read_real("Save1", "lightCosmetic", 0)
        obj_microtransactions.swimmerSkinBought = ini_read_real("Save1", "swimmerSkinBought", 0)
        obj_microtransactions.lightCosmeticBought = ini_read_real("Save1", "lightCosmeticBought", 0)
        obj_options.mouseAndArrowKeyControls = ini_read_real("Save1", "mouseAndArrowKeyControls", 0);
        obj_options.WASDControls = ini_read_real("Save1", "WASDControls", 0);
        obj_options.arrowKeyControls = ini_read_real("Save1", "arrowKeyControls", 0);
        obj_options.decreaseReactionTimeRequired = ini_read_real("Save1", "decreaseReactionTimeRequired", 0);
        obj_options.textToSpeak = ini_read_real("Save1", "textToSpeak", 0);
        obj_options.objectiveReminder = ini_read_real("Save1", "objectiveReminder", 0);
        obj_options.showNumberOfPollutantsPictorially = ini_read_real("Save1", "showNumberOfPollutantsPictorially", 0);
        obj_options.timeAnnoucements = ini_read_real("Save1", "timeAnnoucements", 0);
        obj_options.changeFontToAriel = ini_read_real("Save1", "changeFontToAriel", 0);
        obj_options.removeBackgroundNoise = ini_read_real("Save1", "removeBackgroundNoise", 0)
        obj_options.waitTimeInsteadOfDeath = ini_read_real("Save1", "waitTimeInsteadOfDeath", 0)
        obj_options.destroyEnemiesWithBarriers = ini_read_real("Save1", "destroyEnemiesWithBarriers", 0)
		obj_options.playALevelBackToBack = ini_read_real("Save1", "playALevelBackToBack", 0)
		obj_options.monsterAvoidanceAbility = ini_read_real("Save1", "monsterAvoidanceAbility", 0)
        obj_options.sonar = ini_read_real("Save1", "sonar", 0)
		obj_options.closedCaptioning = ini_read_real("Save1", "closedCaptioning", 0)
		ini_close()
    } else {}
}