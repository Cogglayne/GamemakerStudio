function load() {
    if (file_exists("User.sav")) {
        ini_open("User.sav")
        obj_levelTracker.levelFourEasyTime = ini_read_real("Save1", "levelFourEasyTime", 0)
        obj_levelTracker.levelFourEasyChallengeModeClear = ini_read_real("Save1", "levelFourEasyChallengemodeClear", 0);
        obj_levelTracker.levelFourMediumTime = ini_read_real("Save1", "levelFourMediumTime", 0)
        obj_levelTracker.levelFourMediumChallengeModeClear = ini_read_real("Save1", "levelFourMediumChallengemodeClear", 0);
        obj_levelTracker.levelFourHardTime = ini_read_real("Save1", "levelFourHardTime", 0)
        obj_levelTracker.levelFourHardChallengeModeClear = ini_read_real("Save1", "levelFourHardChallengemodeClear", 0);
        obj_levelTracker.levelFourChallengeModeClear = ini_read_real("Save1", "levelFourChallengemodeClear", 0)
        obj_levelTracker.evolvedMonsterTutorialOneCleared = ini_read_real("Save1", "evolvedMonsterTutorialOneCleared", 0)
        obj_levelTracker.evolvedMonsterTutorialTwoCleared = ini_read_real("Save1", "evolvedMonsterTutorialTwoCleared", 0);
        obj_levelTracker.mineTutorialCleared = ini_read_real("Save1", "mineTutorialCleared", 0)
        obj_levelTracker.monsterTutorialCleared = ini_read_real("Save1", "monsterTutorialCleared", 0);
        obj_levelTracker.probeTutorialCleared = ini_read_real("Save1", "probeTutorialCleared", 0)
        obj_levelTracker.anglerTutorialCleared = ini_read_real("Save1", "anglerTutorialCleared", 0)
        obj_levelTracker.movementTutorialCleared = ini_read_real("Save1", "movementTutorialCleared", 0)
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