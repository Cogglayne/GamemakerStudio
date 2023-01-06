function save() {
    if (file_exists("User.sav")) file_delete("User.sav");
    ini_open("User.sav")
	for (index = 0; index < array_length_1d(obj_levelTracker.levelFourTimes); index += 1) {
		ini_write_real("Save1","levelFourTimes"+string(index),obj_levelTracker.levelFourTimes[index]);
	}	
	for (index = 0; index < array_length_1d(obj_levelTracker.levelFourChallengeModes); index += 1) {
		ini_write_real("Save1","levelFourChallengeModes"+string(index),obj_levelTracker.levelFourChallengeModes[index]);
	}
	for (index = 0; index < array_length_1d(obj_levelTracker.tutorials); index += 1) {
		ini_write_real("Save1","tutorials"+string(index),obj_levelTracker.tutorials[index]);
	}	
	ini_write_real("Save1", "swimmerCosmetic", obj_microtransactions.swimmerSkin);
    ini_write_real("Save1", "lightCosmetic", obj_microtransactions.newLightEffect);
    ini_write_real("Save1", "swimmerSkinBought", obj_microtransactions.swimmerSkinBought);
    ini_write_real("Save1", "lightCosmeticBought", obj_microtransactions.lightCosmeticBought);
    ini_write_real("Save1", "mouseAndArrowKeyControls", obj_options.mouseAndArrowKeyControls);
    ini_write_real("Save1", "WASDControls", obj_options.WASDControls);
    ini_write_real("Save1", "arrowKeyControls", obj_options.arrowKeyControls);
    ini_write_real("Save1", "decreaseReactionTimeRequired", obj_options.decreaseReactionTimeRequired);
    ini_write_real("Save1", "textToSpeak", obj_options.textToSpeak);
    ini_write_real("Save1", "objectiveReminder", obj_options.objectiveReminder);
    ini_write_real("Save1", "showNumberOfPollutantsPictorially", obj_options.showNumberOfPollutantsPictorially);
    ini_write_real("Save1", "timeAnnoucements", obj_options.timeAnnoucements);
    ini_write_real("Save1", "changeFontToAriel", obj_options.changeFontToAriel);
    ini_write_real("Save1", "removeBackgroundNoise", obj_options.removeBackgroundNoise);
    ini_write_real("Save1", "waitTimeInsteadOfDeath", obj_options.waitTimeInsteadOfDeath);
    ini_write_real("Save1", "destroyEnemiesWithBarriers", obj_options.destroyEnemiesWithBarriers);
	ini_write_real("Save1", "playALevelBackToBack", obj_options.playALevelBackToBack);
	ini_write_real("Save1", "monsterAvoidanceAbility", obj_options.monsterAvoidanceAbility);
    ini_write_real("Save1", "sonar", obj_options.sonar);
	ini_write_real("Save1", "closedCaptioning", obj_options.closedCaptioning);
	ini_close();
}