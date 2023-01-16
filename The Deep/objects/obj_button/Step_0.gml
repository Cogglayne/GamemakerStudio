// determines if mouse is in the button
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
// text to speak for a button if activated
if (hove) {
    if (obj_options.options[4] && !soundHasBeenPlayed) {
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
	setDifficulty("Easy")
} else if (click && text = "Medium") {
	setDifficulty("Medium")
} else if (click && text = "Hard") {
	setDifficulty("Hard")
    // tutorials rooms
} else if (click && text = "Movement Tutorial") {
	setTutorialRoom(TutorialMovement)
} else if (click && text = "Monster Tutorial") {
	setTutorialRoom(TutorialMonster)
} else if (click && text = "Mine Tutorial") {
	setTutorialRoom(TutorialMine)
} else if (click && text = "Evolved Monster Tutorial Two") {
	setTutorialRoom(TutorialMonsterEvolvedTwo)
} else if (click && text = "Evolved Monster Tutorial One") {
	setTutorialRoom(TutorialMonsterEvolvedOne)
} else if (click && text = "Angler Tutorial") {
	setTutorialRoom(TutorialAngler)
} else if (click && text = "Probe Tutorial") {
	setTutorialRoom(TutorialProbe)
} else if (click && text = "Replay Tutorial") {
    room_goto(obj_levelTracker.tutorialRoom)
} else if (click && text = "Next Tutorial") {
    // sets the next tutorial room depending on the current tutorial room	
    switch (obj_levelTracker.tutorialRoom) {
        case TutorialMovement:
			setTutorialRoom(TutorialMonster)
            break;
        case TutorialAngler:
            setTutorialRoom(Tutorial)
            break;
        case TutorialMonster:
          setTutorialRoom(TutorialMine)
            break;
        case TutorialMine:
			setTutorialRoom(TutorialMonsterEvolvedOne)
            break;
        case TutorialProbe:
			setTutorialRoom(TutorialAngler)		
            break;
        case TutorialMonsterEvolvedOne:
			setTutorialRoom(TutorialMonsterEvolvedTwo)				
            break;
        case TutorialMonsterEvolvedTwo:
			setTutorialRoom(TutorialProbe)		
            break;
    }
    // mictrotransaction control
} else if (click && text = "Buy a Light Cosmetic for $10") {
	changeMicrotransactionStatus(0,noone,false)
} else if (click && text = "Buy a Swimmer Cosmetic for $10") {
	changeMicrotransactionStatus(2,noone,false)
} else if (click && text = "Delay Timer For $1") {
	changeMicrotransactionStatus(6,7,false)
} else if (click && text = "Slow Down Enemies For $1") {
	changeMicrotransactionStatus(8,9,false)
} else if (click && text = "Continue level for $.50") {
	activateExtraLifeOrSkipWaitTime("Extra")
} else if (click && text = "Skip Wait for $.50") {
	activateExtraLifeOrSkipWaitTime("Skip")
} else if (click && text = "Toggle Swimmer Cosmetic") {
    if (obj_microtransactions.microtransactions[2]) {
		changeMicrotransactionStatus(noone,3,true)
    }
} else if (click && text = "Toggle Light Cosmetic") {
    if (obj_microtransactions.microtransactions[0]) {
		changeMicrotransactionStatus(noone,1,true)
    }
    // changes control schemes
} else if (click && text = "WASD Controls") {
	changeControlScheme(inst_188A1605,inst_303B7AD,inst_4229D191,0,1,2)
} else if (click && text = "Arrow Key Controls") {
	changeControlScheme(inst_4229D191,inst_303B7AD,inst_188A1605,1,0,2)
} else if (click && text = "Mouse And Arrow Key Controls") {
	changeControlScheme(inst_303B7AD,inst_188A1605,inst_4229D191,2,1,0)
	// activate and deactivate gameplay options
} else if (click && text = "End Run") {
	if(obj_options.firstRun && obj_options.options[14]){
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
	changeOptionStatus(3)
} else if (click && text = "Text To Speak") {
	changeOptionStatus(4)
} else if (click && text = "Sonar") {
	changeOptionStatus(11)
}  else if (click && text = "Closed Captioning") {
	changeOptionStatus(10)
} else if (click && text = "Objective Reminder") {
	changeOptionStatus(6)
} else if (click && text = "Show Number Of Pollutants Pictorially") {
	changeOptionStatus(5)
} else if (click && text = "Change Font To Ariel") {
	changeOptionStatus(8)
} else if (click && text = "Time Announcements") {
	changeOptionStatus(7)
} else if (click && text = "Remove Background Noise") {
	changeOptionStatus(9)
	changeBackgroundNoiseStatus()
} else if (click && text = "Destroy Enemies With Barriers") {
	changeOptionStatus(13)
}  else if (click && text = "Monster Avoidance Ability") {
	changeOptionStatus(15)
} else if (click && text = "Play A Level Back To Back") {
	changeOptionStatus(14)
} else if (click && text = "Wait Time Instead Of Death") {
	changeOptionStatus(12)
} else if (click) {
    room_goto(targetRoom);
}