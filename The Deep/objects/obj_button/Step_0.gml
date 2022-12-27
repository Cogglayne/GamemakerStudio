// determines if mouse is in the button
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
// text to speak for a button if activated
if (hove) {
    if (obj_options.textToSpeak && !soundHasBeenPlayed) {
        stopButtonSounds()
        audio_play_sound(soundToPlay, 1, 0)
        soundHasBeenPlayed = true;
    }
} else {
    soundHasBeenPlayed = false;
}
// decects if the button is being clicked
var click = hover && mouse_check_button_pressed(mb_left);
// transitions the button color
hover = lerp(hover, hove, 0.1)
if(click){
	stopButtonSounds()
	audio_play_sound(snd_menuSelection,1,0);
}
// changes what clicking a button will do depending on its text
if (click && text = "Quit") {
    game_end();
    // difficulties
}  else if (click && text = "Easy") {
    obj_levelTracker.levelDifficulty = "Easy"
    room_goto(targetRoom);
} else if (click && text = "Medium") {
    obj_levelTracker.levelDifficulty = "Medium"
    room_goto(targetRoom);
} else if (click && text = "Hard") {
    obj_levelTracker.levelDifficulty = "Hard"
    room_goto(targetRoom);
    // tutorials rooms
} else if (click && text = "Movement Tutorial") {
    obj_levelTracker.tutorialRoom = TutorialMovement;
    room_goto(targetRoom);
} else if (click && text = "Monster Tutorial") {
    obj_levelTracker.tutorialRoom = TutorialMonster;
    room_goto(targetRoom);
} else if (click && text = "Mine Tutorial") {
    obj_levelTracker.tutorialRoom = TutorialMine;
    room_goto(targetRoom);
} else if (click && text = "Evolved Monster Tutorial Two") {
    obj_levelTracker.tutorialRoom = TutorialMonsterEvolvedTwo;
    room_goto(targetRoom);
} else if (click && text = "Evolved Monster Tutorial One") {
    obj_levelTracker.tutorialRoom = TutorialMonsterEvolvedOne;
    room_goto(targetRoom);
} else if (click && text = "Angler Tutorial") {
    obj_levelTracker.tutorialRoom = TutorialAngler;
    room_goto(targetRoom);
} else if (click && text = "Probe Tutorial") {
    obj_levelTracker.tutorialRoom = TutorialProbe;
    room_goto(targetRoom);
} else if (click && text = "Replay Tutorial") {
    room_goto(obj_levelTracker.tutorialRoom)
} else if (click && text = "Next Tutorial") {
    // sets the next tutorial room depending on the current tutorial room	
    switch (obj_levelTracker.tutorialRoom) {
        case TutorialMovement:
            obj_levelTracker.tutorialRoom = TutorialMonster;
            room_goto(TutorialMonster)
            break;
        case TutorialAngler:
            room_goto(Tutorial)
            break;
        case TutorialMonster:
            obj_levelTracker.tutorialRoom = TutorialMine;
            room_goto(TutorialMine)
            break;
        case TutorialMine:
            obj_levelTracker.tutorialRoom = TutorialMonsterEvolvedOne;
            room_goto(TutorialMonsterEvolvedOne)
            break;
        case TutorialProbe:
            obj_levelTracker.tutorialRoom = TutorialAngler;
            room_goto(TutorialAngler)
            break;
        case TutorialMonsterEvolvedOne:
            obj_levelTracker.tutorialRoom = TutorialMonsterEvolvedTwo;
            room_goto(TutorialMonsterEvolvedTwo)
            break;
        case TutorialMonsterEvolvedTwo:
            obj_levelTracker.tutorialRoom = TutorialProbe;
            room_goto(TutorialProbe)
            break;
    }
    // mictrotransaction control
} else if (click && text = "Buy a Light Cosmetic for $10") {
    obj_microtransactions.lightCosmeticBought = true;
    bought = true;
} else if (click && text = "Buy a Swimmer Cosmetic for $10") {
    obj_microtransactions.swimmerSkinBought = true;
    bought = true;
} else if (click && text = "Delay Timer For $1") {
    obj_microtransactions.timerDelay = true;
	obj_microtransactions.timerDelayBought = true;
    activated = true;
} else if (click && text = "Slow Down Enemies For $1") {
    obj_microtransactions.enemiesSlowed = true;
	obj_microtransactions.enemiesSlowedBought = true;
    activated = true;
} else if (click && text = "Continue level for $.50") {
    obj_microtransactions.extraLife = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    instance_deactivate_layer("Extra")
} else if (click && text = "Skip Wait for $.50") {
    obj_microtransactions.extraLife = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_destroy(obj_wait)
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    instance_deactivate_layer("Wait")
} else if (click && text = "Toggle Swimmer Cosmetic") {
    if (obj_microtransactions.swimmerSkinBought) {
        if (obj_microtransactions.swimmerSkin == false) {
            obj_microtransactions.swimmerSkin = true
            activated = true;
        } else if (obj_microtransactions.swimmerSkin == true) {
            obj_microtransactions.swimmerSkin = false
            activated = false;
        }
    }
} else if (click && text = "Toggle Light Cosmetic") {
    if (obj_microtransactions.lightCosmeticBought) {
        if (obj_microtransactions.newLightEffect == false) {
            obj_microtransactions.newLightEffect = true
            activated = true;
        } else if (obj_microtransactions.newLightEffect == true) {
            obj_microtransactions.newLightEffect = false
            activated = false;
        }
    }
    // changes control schemes
} else if (click && text = "WASD Controls") {
    obj_options.WASDControls = true;
    obj_options.arrowKeyControls = false;
    obj_options.mouseAndArrowKeyControls = false;
    obj_options.decreaseReactionTimeRequired = false;
    activated = true;
    inst_303B7AD.activated = false;
    inst_4229D191.activated = false;
} else if (click && text = "Arrow Key Controls") {
    obj_options.WASDControls = false;
    obj_options.arrowKeyControls = true;
    obj_options.mouseAndArrowKeyControls = false;
    obj_options.decreaseReactionTimeRequired = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_303B7AD.activated = false;
} else if (click && text = "Mouse And Arrow Key Controls") {
    obj_options.WASDControls = false;
    obj_options.arrowKeyControls = false;
    obj_options.mouseAndArrowKeyControls = true;
    obj_options.decreaseReactionTimeRequired = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_4229D191.activated = false;
	// activate and deactivate gameplay options
} else if (click && text = "End Run") {
	if(obj_options.firstRun && obj_options.playALevelBackToBack){
		obj_options.firstRun = false;
		    instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("AmbientBackground")
			instance_deactivate_layer("Wait")
            instance_activate_layer("Transition")	
	}else{
		room_goto(targetRoom)
	}
} else if (click && text = "Begin Second Player Attempt") {
    room_restart();
} else if (click && text = "Decrease Reaction Time Required") {
	with(obj_options){
		decreaseReactionTimeRequired = changeVariableStatus(decreaseReactionTimeRequired)
	}
	changeActivated()
} else if (click && text = "Text To Speak") {
	with(obj_options){
		textToSpeak = changeVariableStatus(textToSpeak)
	}
	changeActivated()
} else if (click && text = "Sonar") {
	with(obj_options){
		sonar = changeVariableStatus(sonar)
	}	
	changeActivated()
}  else if (click && text = "Closed Captioning") {
	with(obj_options){
		closedCaptioning = changeVariableStatus(closedCaptioning)
	}
	changeActivated()
} else if (click && text = "Objective Reminder") {
	with(obj_options){
		closedCaptioning = changeVariableStatus(closedCaptioning)
	}
	changeActivated()
} else if (click && text = "Show Number Of Pollutants Pictorially") {
	with(obj_options){
		showNumberOfPollutantsPictorially = changeVariableStatus(showNumberOfPollutantsPictorially)
	}
	changeActivated()
} else if (click && text = "Change Font To Ariel") {
	with(obj_options){
		changeFontToAriel = changeVariableStatus(changeFontToAriel)
	}	
	changeActivated()
} else if (click && text = "Time Announcements") {
	with(obj_options){
		timeAnnoucements = changeVariableStatus(timeAnnoucements)
	}		
	changeActivated()
} else if (click && text = "Remove Background Noise") {
	with(obj_options){
		removeBackgroundNoise = changeVariableStatus(removeBackgroundNoise)
	}	
	changeActivated()
} else if (click && text = "Destroy Enemies With Barriers") {
	with(obj_options){
		destroyEnemiesWithBarriers = changeVariableStatus(destroyEnemiesWithBarriers)
	}	
	changeActivated()
}  else if (click && text = "Monster Avoidance Ability") {
	with(obj_options){
		monsterAvoidanceAbility = changeVariableStatus(monsterAvoidanceAbility)
	}	
	changeActivated()
} else if (click && text = "Play A Level Back To Back") {
	with(obj_options){
		playALevelBackToBack = changeVariableStatus(playALevelBackToBack)
	}	
	changeActivated()
} else if (click && text = "Wait Time Instead Of Death") {
	with(obj_options){
		waitTimeInsteadOfDeath = changeVariableStatus(waitTimeInsteadOfDeath)
	}	
	changeActivated()
} else if (click) {
    room_goto(targetRoom);
}