function stopGameSounds() {
    audio_stop_sound(snd_pollutant)
    audio_stop_sound(snd_ship)
    audio_stop_sound(snd_bubble)
    audio_stop_sound(snd_waves)
    audio_stop_sound(snd_probeCreation)
    audio_stop_sound(snd_monster)
    audio_stop_sound(snd_evolvedMonster)
    audio_stop_sound(snd_mine)
    audio_stop_sound(snd_horror)
    audio_stop_sound(snd_swimming)
    if (instance_exists(obj_parHorror)) {
        obj_parHorror.state = 0;
    }
    if (instance_exists(obj_parPollutant)) {
        obj_parPollutant.state = 0;
    }
    if (instance_exists(obj_parProbe)) {
        obj_parProbe.state = 0;
    }
    if (instance_exists(obj_parPatrollingEnemy)) {
        obj_parPatrollingEnemy.state = 0;
    }
    if (instance_exists(obj_parAmbient)) {
        obj_parAmbient.state = 0;
    }
}

function stopButtonSounds() {
	audio_stop_sound(snd_closedCaptioning)
	audio_stop_sound(snd_sonar)
    audio_stop_sound(snd_alternativePunishment)
    audio_stop_sound(snd_variableObjectives)
    audio_stop_sound(snd_dyscalculia)
    audio_stop_sound(snd_dyslexia)
    audio_stop_sound(snd_adhd)
    audio_stop_sound(snd_executiveFunctioning)
    audio_stop_sound(snd_AuditoryProcessingDisorder)
    audio_stop_sound(snd_movementTutorial)
    audio_stop_sound(snd_back)
    audio_stop_sound(snd_besttimes)
    audio_stop_sound(snd_blindMode)
    audio_stop_sound(snd_comingsoon)
    audio_stop_sound(snd_continue)
    audio_stop_sound(snd_credits)
    audio_stop_sound(snd_delay)
    audio_stop_sound(snd_easy)
    audio_stop_sound(snd_endrun)
    audio_stop_sound(snd_extralife)
    audio_stop_sound(snd_hard)
    audio_stop_sound(snd_Instructions)
    audio_stop_sound(snd_leftHanded)
    audio_stop_sound(snd_levelfour)
    audio_stop_sound(snd_lightCosmetic)
    audio_stop_sound(snd_mainMenu)
    audio_stop_sound(snd_medium)
    audio_stop_sound(snd_multiplayer)
    audio_stop_sound(snd_next)
    audio_stop_sound(snd_options)
    audio_stop_sound(snd_poorReactivity)
    audio_stop_sound(snd_quit)
    audio_stop_sound(snd_rightHanded)
    audio_stop_sound(snd_singleplayer)
    audio_stop_sound(snd_slowEnemies)
    audio_stop_sound(snd_standard)
    audio_stop_sound(snd_store)
    audio_stop_sound(snd_swimmerCosmetic)
    audio_stop_sound(snd_toggleSwimmerCosmetic)
    audio_stop_sound(snd_toggleLightCosmetic)
    audio_stop_sound(snd_tutorials)
    audio_stop_sound(snd_tutorial)
    audio_stop_sound(snd_monsterTutorial)
    audio_stop_sound(snd_mineTutorial)
    audio_stop_sound(snd_evolvedMonsterTutorialOne)
    audio_stop_sound(snd_evolvedMonsterTutorialTwo)
    audio_stop_sound(snd_probeTutorial)
    audio_stop_sound(snd_anglerTutorial)
    audio_stop_sound(snd_nextTutorial)
    audio_stop_sound(snd_replayTutorial)
	audio_stop_sound(snd_conflictResolutionAlternatives)
	audio_stop_sound(snd_indirectCompetition)
}

function stopRoomText() {
    audio_stop_sound(snd_alternateWin)
    audio_stop_sound(snd_tutorialNotPassed)
    audio_stop_sound(snd_tutorialPassed)
    audio_stop_sound(snd_tutorialsRecommended)
    audio_stop_sound(snd_instructionsPagefour)
    audio_stop_sound(snd_instructionsPagethree)
    audio_stop_sound(snd_instructionsPagetwo)
    audio_stop_sound(snd_instructionsPageone)
    audio_stop_sound(snd_lostMulti)
    audio_stop_sound(snd_lostSingle)
    audio_stop_sound(snd_win)
    audio_stop_sound(snd_TheDeep)
    audio_stop_sound(snd_collectOrDestroy)
    audio_stop_sound(snd_collectPollutants)	
}

function stopTrainerSounds() {
    // text
    audio_stop_sound(snd_anglerTutorialActive)
    audio_stop_sound(snd_anglerTutorialTrial)
    audio_stop_sound(snd_evolvedMonsterTutorialOneActive)
    audio_stop_sound(snd_evolvedMonsterTutorialTrialOne)
    audio_stop_sound(snd_evolvedMonsterTutorialTrialTwo)
    audio_stop_sound(snd_evolvedMonsterTutorialTwoActive)
    audio_stop_sound(snd_mineTutorialActive)
    audio_stop_sound(snd_mineTutorialTrial)
    audio_stop_sound(snd_monsterTutorialActive)
    audio_stop_sound(snd_monsterTutorialTrial)
    audio_stop_sound(snd_probeTutorialActive)
    audio_stop_sound(snd_probeTutorialTrial)
    audio_stop_sound(snd_movementTutorialActive)
    audio_stop_sound(snd_movementTutorialTrial)
    // text two
    audio_stop_sound(snd_anglerActivated)
    audio_stop_sound(snd_enemyActive)
    audio_stop_sound(snd_monsterRight)
    audio_stop_sound(snd_monsterLeft)
    audio_stop_sound(snd_mineUp)
    audio_stop_sound(snd_mineDown)
    audio_stop_sound(snd_monsterEvolvedCollision)
    audio_stop_sound(snd_monsterEvolvedTutorialCollision)
    audio_stop_sound(snd_monsterTutorialMistake)
    audio_stop_sound(snd_mineTutorialMistake)
    audio_stop_sound(snd_evolvedMonsterTutorialMistake)
    audio_stop_sound(snd_probeSecondLaunch)
    audio_stop_sound(snd_swimLeft)
}