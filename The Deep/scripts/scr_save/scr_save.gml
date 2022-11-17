function save() {
    if (file_exists("User.sav")) file_delete("User.sav");
    ini_open("User.sav")
    ini_write_real("Save1", "levelFourEasyTime", obj_levelTracker.levelFourEasyTime);
    ini_write_real("Save1", "levelFourEasyChallengemodeClear", obj_levelTracker.levelFourEasyChallengeModeClear);
    ini_write_real("Save1", "levelFourMediumTime", obj_levelTracker.levelFourMediumTime);
    ini_write_real("Save1", "levelFourMediumChallengemodeClear", obj_levelTracker.levelFourMediumChallengeModeClear);
    ini_write_real("Save1", "levelFourHardTime", obj_levelTracker.levelFourHardTime);
    ini_write_real("Save1", "levelFourHardChallengemodeClear", obj_levelTracker.levelFourHardChallengeModeClear);
    ini_write_real("Save1", "levelFourChallengemodeClear", obj_levelTracker.levelFourChallengeModeClear);
    ini_write_real("Save1", "swimmerCosmetic", obj_microtransactions.swimmerSkin);
    ini_write_real("Save1", "lightCosmetic", obj_microtransactions.newLightEffect);
    ini_write_real("Save1", "swimmerSkinBought", obj_microtransactions.swimmerSkinBought);
    ini_write_real("Save1", "lightCosmeticBought", obj_microtransactions.lightCosmeticBought);
    ini_write_real("Save1", "normal", obj_disabilities.normal);
    ini_write_real("Save1", "leftHanded", obj_disabilities.leftHandControls);
    ini_write_real("Save1", "rightHanded", obj_disabilities.rightHandControls);
    ini_write_real("Save1", "poorReactivity", obj_disabilities.poorReactivity);
    ini_write_real("Save1", "blindMode", obj_disabilities.blindMode);
    ini_write_real("Save1", "ADHD", obj_disabilities.ADHD);
    ini_write_real("Save1", "dyscalculia", obj_disabilities.dyscalculia);
    ini_write_real("Save1", "executiveFunctioning", obj_disabilities.executiveFunctioning);
    ini_write_real("Save1", "dyslexia", obj_disabilities.dyslexia);
    ini_write_real("Save1", "evolvedMonsterTutorialOneCleared", obj_levelTracker.evolvedMonsterTutorialOneCleared);
    ini_write_real("Save1", "evolvedMonsterTutorialTwoCleared", obj_levelTracker.evolvedMonsterTutorialTwoCleared);
    ini_write_real("Save1", "mineTutorialCleared", obj_levelTracker.mineTutorialCleared);
    ini_write_real("Save1", "monsterTutorialCleared", obj_levelTracker.monsterTutorialCleared);
    ini_write_real("Save1", "probeTutorialCleared", obj_levelTracker.probeTutorialCleared);
    ini_write_real("Save1", "anglerTutorialCleared", obj_levelTracker.anglerTutorialCleared);
    ini_write_real("Save1", "movementTutorialCleared", obj_levelTracker.movementTutorialCleared);
    ini_write_real("Save1", "auditoryProcessingDisorder", obj_disabilities.auditoryProcessingDisorder);
    ini_write_real("Save1", "alternativePunishment", obj_levelTracker.alternativePunishment);
    ini_write_real("Save1", "variableObjectives", obj_levelTracker.variableObjectives);
    ini_close();
}