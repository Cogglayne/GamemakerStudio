// determines if mouse is in the button
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
// text to speak for a button if activated
if (hove) {
    if (obj_disabilities.blindMode && !soundHasBeenPlayed && !audio_is_playing(soundToPlay)) {
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
    // gameplay options
} else if (click && text = "End Run") {
	if(obj_levelTracker.firstRun && obj_levelTracker.indirectCompetition){
		obj_levelTracker.firstRun = false;
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
    if (obj_levelTracker.variableObjectives == false) {
        obj_levelTracker.variableObjectives = true
        activated = true;
    } else if (obj_levelTracker.variableObjectives == true) {
        obj_levelTracker.variableObjectives = false
        activated = false;
    }
}  else if (click && text = "Monster Avoidance Ability") {
    if (obj_levelTracker.conflictResolutionAlternatives == false) {
        obj_levelTracker.conflictResolutionAlternatives = true
        activated = true;
    } else if (obj_levelTracker.conflictResolutionAlternatives == true) {
        obj_levelTracker.conflictResolutionAlternatives = false
        activated = false;
    }
}  else if (click && text = "Begin Second Player Attempt") {
    room_restart();
} else if (click && text = "Play A Level Back To Back") {
    if (obj_levelTracker.indirectCompetition == false) {
        obj_levelTracker.indirectCompetition = true
        activated = true;
    } else if (obj_levelTracker.indirectCompetition == true) {
        obj_levelTracker.indirectCompetition = false
        activated = false;
    }
} else if (click && text = "Wait Time Instead Of Death") {
    if (obj_levelTracker.alternativePunishment == false) {
        obj_levelTracker.alternativePunishment = true
        activated = true;
    } else if (obj_levelTracker.alternativePunishment == true) {
        obj_levelTracker.alternativePunishment = false
        activated = false;
    }
    // level difficulties
} else if (click && text = "Easy") {
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
    instance_activate_layer("Whales")
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    instance_deactivate_layer("Extra")
} else if (click && text = "Skip Wait for $.50") {
    obj_microtransactions.extraLife = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_destroy(obj_wait)
    instance_activate_layer("Whales")
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
    obj_disabilities.leftHandControls = true;
    obj_disabilities.rightHandControls = false;
    obj_disabilities.normal = false;
    obj_disabilities.poorReactivity = false;
    activated = true;
    inst_303B7AD.activated = false;
    inst_4229D191.activated = false;
    inst_5072045A.activated = false;
} else if (click && text = "Arrow Key Controls") {
    obj_disabilities.leftHandControls = false;
    obj_disabilities.rightHandControls = true;
    obj_disabilities.normal = false;
    obj_disabilities.poorReactivity = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_303B7AD.activated = false;
    inst_5072045A.activated = false;
} else if (click && text = "Mouse and Arrow Key Controls") {
    obj_disabilities.leftHandControls = false;
    obj_disabilities.rightHandControls = false;
    obj_disabilities.normal = true;
    obj_disabilities.poorReactivity = false;
    activated = true;
    inst_188A1605.activated = false;
    inst_4229D191.activated = false;
    inst_5072045A.activated = false;
} else if (click && text = "Decrease Reaction Time Required") {
    obj_disabilities.leftHandControls = false;
    obj_disabilities.rightHandControls = false;
    obj_disabilities.normal = false;
    obj_disabilities.poorReactivity = true;
    activated = true;
    inst_188A1605.activated = false;
    inst_303B7AD.activated = false;
    inst_4229D191.activated = false;
    // activates text to speech
} else if (click && text = "Text To Speak") {
    if (obj_disabilities.blindMode == false) {
        obj_disabilities.blindMode = true
        activated = true;
    } else if (obj_disabilities.blindMode == true) {
        obj_disabilities.blindMode = false
        activated = false;
    }
    // activates sonar
} else if (click && text = "Sonar") {
    if (obj_disabilities.sonar == false) {
        obj_disabilities.sonar = true
        activated = true;
    } else if (obj_disabilities.sonar == true) {
        obj_disabilities.sonar = false
        activated = false;
    }
    // activates closed captioning
}  else if (click && text = "Closed Captioning") {
    if (obj_disabilities.closedCaptioning == false) {
        obj_disabilities.closedCaptioning = true
        activated = true;
    } else if (obj_disabilities.closedCaptioning == true) {
        obj_disabilities.closedCaptioning = false
        activated = false;
    }
    // shows a button does not go anywhere
} else if (click && text == "Coming Soon") {
    error = true;
    // Activates and decativates different features
} else if (click && text = "Objective Reminder") {
    if (obj_disabilities.ADHD == false) {
        obj_disabilities.ADHD = true
        activated = true;
    } else if (obj_disabilities.ADHD == true) {
        obj_disabilities.ADHD = false
        activated = false;
    }
} else if (click && text = "Show Number Of Pollutants Pictorially") {
    if (obj_disabilities.dyscalculia == false) {
        obj_disabilities.dyscalculia = true
        activated = true
    } else if (obj_disabilities.dyscalculia == true) {
        obj_disabilities.dyscalculia = false
        activated = false;
    }
} else if (click && text = "Change Font To Ariel") {
    if (obj_disabilities.dyslexia == false) {
        obj_disabilities.dyslexia = true
        activated = true;
    } else if (obj_disabilities.dyslexia == true) {
        obj_disabilities.dyslexia = false
        activated = false;
    }
} else if (click && text = "Time Announcements") {
    if (obj_disabilities.executiveFunctioning == false) {
        obj_disabilities.executiveFunctioning = true
        activated = true;
    } else if (obj_disabilities.executiveFunctioning == true) {
        obj_disabilities.executiveFunctioning = false
        activated = false;
    }
} else if (click && text = "Remove Background Noise") {
    if (obj_disabilities.auditoryProcessingDisorder == false) {
        obj_disabilities.auditoryProcessingDisorder = true
        activated = true;
    } else if (obj_disabilities.auditoryProcessingDisorder == true) {
        obj_disabilities.auditoryProcessingDisorder = false
        activated = false;
    }
    if (audio_is_playing(snd_background)) {
        audio_stop_sound(snd_background)
    } else if (!audio_is_playing(snd_background)) {
        audio_play_sound(snd_background, 0, 1);
    }
} else if (click) {
    room_goto(targetRoom);
}