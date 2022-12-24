// determines if mouse is in the button
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
// text to speak for a button if activated
if (hove) {
    if (obj_options.textToSpeak && !soundHasBeenPlayed && !audio_is_playing(soundToPlay)) {
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
    obj_levelTracker.levelDiffuclty = "Easy"
    room_goto(targetRoom);
} else if (click && text = "Medium") {
    obj_levelTracker.levelDiffuclty = "Medium"
    room_goto(targetRoom);
} else if (click && text = "Hard") {
    obj_levelTracker.levelDiffuclty = "Hard"
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
    activated = true;
} else if (click && text = "Buy a Swimmer Cosmetic for $10") {
    obj_microtransactions.swimmerSkinBought = true;
    activated = true;
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
    inst_5072045A.activated = false;
} else if (click && text = "Arrow Key Controls") {
    obj_options.WASDControls = false;
    obj_options.arrowKeyControls = true;
    obj_options.mouseAndArrowKeyControls = false;
    obj_options.decreaseReactionTimeRequired = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_303B7AD.activated = false;
    inst_5072045A.activated = false;
} else if (click && text = "Mouse And Arrow Key Controls") {
    obj_options.WASDControls = false;
    obj_options.arrowKeyControls = false;
    obj_options.mouseAndArrowKeyControls = true;
    obj_options.decreaseReactionTimeRequired = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_4229D191.activated = false;
    inst_5072045A.activated = false;
	// activate and deactivate gameplay options
} else if (click && text = "Decrease Reaction Time Required") {
    obj_options.WASDControls = false;
    obj_options.arrowKeyControls = false;
    obj_options.mouseAndArrowKeyControls = false;
    obj_options.decreaseReactionTimeRequired = true;
    activated = true;
    inst_188A1605.activated = false;
    inst_303B7AD.activated = false;
    inst_4229D191.activated = false;
} else if (click && text = "Text To Speak") {
    if (obj_options.textToSpeak == false) {
        obj_options.textToSpeak = true
        activated = true;
    } else if (obj_options.textToSpeak == true) {
        obj_options.textToSpeak = false
        activated = false;
    }
} else if (click && text = "Sonar") {
    if (obj_options.sonar == false) {
        obj_options.sonar = true
        activated = true;
    } else if (obj_options.sonar == true) {
        obj_options.sonar = false
        activated = false;
    }
}  else if (click && text = "Closed Captioning") {
    if (obj_options.closedCaptioning == false) {
        obj_options.closedCaptioning = true
        activated = true;
    } else if (obj_options.closedCaptioning == true) {
        obj_options.closedCaptioning = false
        activated = false;
    }
} else if (click && text = "Objective Reminder") {
    if (obj_options.objectiveReminder == false) {
        obj_options.objectiveReminder = true
        activated = true;
    } else if (obj_options.objectiveReminder == true) {
        obj_options.objectiveReminder = false
        activated = false;
    }
} else if (click && text = "Show Number Of Pollutants Pictorially") {
    if (obj_options.showNumberOfPollutantsPictorially == false) {
        obj_options.showNumberOfPollutantsPictorially = true
        activated = true
    } else if (obj_options.showNumberOfPollutantsPictorially == true) {
        obj_options.showNumberOfPollutantsPictorially = false
        activated = false;
    }
} else if (click && text = "Change Font To Ariel") {
    if (obj_options.changeFontToAriel == false) {
        obj_options.changeFontToAriel = true
        activated = true;
    } else if (obj_options.changeFontToAriel == true) {
        obj_options.changeFontToAriel = false
        activated = false;
    }
} else if (click && text = "Time Announcements") {
    if (obj_options.timeAnnoucements == false) {
        obj_options.timeAnnoucements = true
        activated = true;
    } else if (obj_options.timeAnnoucements == true) {
        obj_options.timeAnnoucements = false
        activated = false;
    }
} else if (click && text = "Remove Background Noise") {
    if (obj_options.removeBackgroundNoise == false) {
        obj_options.removeBackgroundNoise = true
        activated = true;
    } else if (obj_options.removeBackgroundNoise == true) {
        obj_options.removeBackgroundNoise = false
        activated = false;
    }
    if (audio_is_playing(snd_background)) {
        audio_stop_sound(snd_background)
    } else if (!audio_is_playing(snd_background)) {
        audio_play_sound(snd_background, 0, 1);
    }
}else if (click && text = "End Run") {
	if(obj_options.firstRun && obj_options.playALevelBackToBack){
		obj_options.firstRun = false;
		    instance_deactivate_layer("Instances")
            instance_deactivate_layer("LightInstance")
            instance_deactivate_layer("Whales")
            instance_deactivate_layer("AmbientBackground")
			instance_deactivate_layer("Wait")
            instance_activate_layer("Transition")	
	}else{
		room_goto(targetRoom)
	}
}  else if (click && text = "Destroy Enemies With Barriers") {
    if (obj_options.destroyEnemiesWithBarriers == false) {
        obj_options.destroyEnemiesWithBarriers = true
        activated = true;
    } else if (obj_options.destroyEnemiesWithBarriers == true) {
        obj_options.destroyEnemiesWithBarriers = false
        activated = false;
    }
}  else if (click && text = "Monster Avoidance Ability") {
    if (obj_options.monsterAvoidanceAbility == false) {
        obj_options.monsterAvoidanceAbility = true
        activated = true;
    } else if (obj_options.monsterAvoidanceAbility == true) {
        obj_options.monsterAvoidanceAbility = false
        activated = false;
    }
}  else if (click && text = "Begin Second Player Attempt") {
    room_restart();
} else if (click && text = "Play A Level Back To Back") {
    if (obj_options.playALevelBackToBack == false) {
        obj_options.playALevelBackToBack = true
        activated = true;
    } else if (obj_options.playALevelBackToBack == true) {
        obj_options.playALevelBackToBack = false
        activated = false;
    }
} else if (click && text = "Wait Time Instead Of Death") {
    if (obj_options.waitTimeInsteadOfDeath == false) {
        obj_options.waitTimeInsteadOfDeath = true
        activated = true;
    } else if (obj_options.waitTimeInsteadOfDeath == true) {
        obj_options.waitTimeInsteadOfDeath = false
        activated = false;
    }
} else if (click) {
    room_goto(targetRoom);
}