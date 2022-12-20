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
        obj_microtransactions.swimmerSkin = ini_read_real("Save1", "swimmerCosmetic", 0)
        obj_microtransactions.newLightEffect = ini_read_real("Save1", "lightCosmetic", 0)
        obj_microtransactions.swimmerSkinBought = ini_read_real("Save1", "swimmerSkinBought", 0)
        obj_microtransactions.lightCosmeticBought = ini_read_real("Save1", "lightCosmeticBought", 0)
        obj_options.normal = ini_read_real("Save1", "normal", 0);
        obj_options.leftHandControls = ini_read_real("Save1", "leftHanded", 0);
        obj_options.rightHandControls = ini_read_real("Save1", "rightHanded", 0);
        obj_options.poorReactivity = ini_read_real("Save1", "poorReactivity", 0);
        obj_options.blindMode = ini_read_real("Save1", "blindMode", 0);
        obj_options.ADHD = ini_read_real("Save1", "ADHD", 0);
        obj_options.dyscalculia = ini_read_real("Save1", "dyscalculia", 0);
        obj_options.executiveFunctioning = ini_read_real("Save1", "executiveFunctioning", 0);
        obj_options.dyslexia = ini_read_real("Save1", "dyslexia", 0);
        obj_levelTracker.evolvedMonsterTutorialOneCleared = ini_read_real("Save1", "evolvedMonsterTutorialOneCleared", 0)
        obj_levelTracker.evolvedMonsterTutorialTwoCleared = ini_read_real("Save1", "evolvedMonsterTutorialTwoCleared", 0);
        obj_levelTracker.mineTutorialCleared = ini_read_real("Save1", "mineTutorialCleared", 0)
        obj_levelTracker.monsterTutorialCleared = ini_read_real("Save1", "monsterTutorialCleared", 0);
        obj_levelTracker.probeTutorialCleared = ini_read_real("Save1", "probeTutorialCleared", 0)
        obj_levelTracker.anglerTutorialCleared = ini_read_real("Save1", "anglerTutorialCleared", 0)
        obj_levelTracker.movementTutorialCleared = ini_read_real("Save1", "movementTutorialCleared", 0)
        obj_options.auditoryProcessingDisorder = ini_read_real("Save1", "auditoryProcessingDisorder", 0)
        obj_options.alternativePunishment = ini_read_real("Save1", "alternativePunishment", 0)
        obj_options.variableObjectives = ini_read_real("Save1", "variableObjectives", 0)
		obj_options.indirectCompetition = ini_read_real("Save1", "indirectCompetition", 0)
		obj_options.conflictResolutionAlternatives = ini_read_real("Save1", "conflictResolutionAlternative", 0)
        obj_options.sonar = ini_read_real("Save1", "sonar", 0)
		obj_options.closedCaptioning = ini_read_real("Save1", "closedCaptioning", 0)
		ini_close()
    } else {}
}