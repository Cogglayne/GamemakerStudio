function resetSound(){
audio_stop_sound(snd_pollutant)
audio_stop_sound(snd_whale)
audio_stop_sound(snd_ship)
audio_stop_sound(snd_bubble)
audio_stop_sound(snd_waves)
audio_stop_sound(snd_probeCreation)
audio_stop_sound(snd_monster)
audio_stop_sound(snd_evolvedMonster)
audio_stop_sound(snd_mine)
audio_stop_sound(snd_horror)
if(instance_exists(obj_horror)){
obj_horror.state = 0;
}
if(instance_exists(obj_monsterEvolved)){
obj_monsterEvolved.state = 0;
}
if(instance_exists(obj_brownWhite_beige)){
obj_brownWhite_beige.state = 0;
}
if(instance_exists(obj_greenRed_yellow)){
obj_greenRed_yellow.state = 0;
}
if(instance_exists(obj_orangeBlue_brown)){
obj_orangeBlue_brown.state = 0;
}
if(instance_exists(obj_redBlue_violet)){
obj_redBlue_violet.state = 0;
}
if(instance_exists(obj_redYellow_orange)){
obj_redYellow_orange.state = 0;
}
if(instance_exists(obj_whiteBlack_grey)){
obj_whiteBlack_grey.state = 0;
}
if(instance_exists(obj_whiteRed_pink)){
obj_whiteRed_pink.state = 0;
}
if(instance_exists(obj_yellowBlue_green)){
obj_yellowBlue_green.state = 0;
}
if(instance_exists(obj_whale)){
obj_whale.state = 0;
}
if(instance_exists(obj_probe)){
obj_probe.state = 0;
}
if(instance_exists(obj_monster)){
obj_monster.state = 0;
}
if(instance_exists(obj_mine)){
obj_mine.state = 0;
}
if(instance_exists(obj_waveGenerator)){
obj_waveGenerator.state = 0;
}
if(instance_exists(obj_ship)){
obj_ship.state = 0;
}
obj_bubble.state = 0;
}
function stopButtonSounds(){
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
audio_stop_sound(snd_grading)	
audio_stop_sound(snd_hard)	
audio_stop_sound(snd_Instructions)	
audio_stop_sound(snd_leftHanded)	
audio_stop_sound(snd_levelfour)	
audio_stop_sound(snd_lightCosmetic)	
audio_stop_sound(snd_mainMenu)	
audio_stop_sound(snd_medium)	
audio_stop_sound(snd_minigames)	
audio_stop_sound(snd_multiplayer)	
audio_stop_sound(snd_next)	
audio_stop_sound(snd_options)	
audio_stop_sound(snd_poorReactivity)	
audio_stop_sound(snd_puzzleSolutionExample)	
audio_stop_sound(snd_quit)	
audio_stop_sound(snd_rightHanded)	
audio_stop_sound(snd_singleplayer)	
audio_stop_sound(snd_slowEnemies)	
audio_stop_sound(snd_standard)	
audio_stop_sound(snd_store)	
audio_stop_sound(snd_swimmerCosmetic)	
audio_stop_sound(snd_toggleSwimmerCosmetic)	
audio_stop_sound(snd_toggleLightCosmetic)	
audio_stop_sound(snd_tutorial)	
}
function stopRoomText(){
audio_stop_sound(snd_instructionsPagefive)	
audio_stop_sound(snd_instructionsPagefour)	
audio_stop_sound(snd_instructionsPagethree)	
audio_stop_sound(snd_instructionsPagetwo)	
audio_stop_sound(snd_instructionsPageone)	
audio_stop_sound(snd_lostMulti)	
audio_stop_sound(snd_lostSingle)	
audio_stop_sound(snd_win)	
audio_stop_sound(snd_TheDeep)	
audio_stop_sound(snd_instructionsPagesix)
}
function stopTrainerSounds(){
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
}
