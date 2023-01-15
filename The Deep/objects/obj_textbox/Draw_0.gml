draw_set_color(c_white)
if (obj_options.options[8]) {
    draw_set_font(ft_Ariel)
} else if (!obj_options.options[8]) {
    draw_set_font(ft_Chiller);
}
if (room == InstructionsPageOne) {
draw_text_ext(0, 0, 
@"Escape will return you to the main menu at any time.
Mouse and Arrow Key Controls (activated by the Mouse and Arrow Key Controls button in options, deactivates all other control schemes). 
Up Arrow Key To Swim Up, Down Arrow Key To Swim Down, Left Arrow Key To Swim Left, Right Arrow Key To Swim Right.
Left click to the left or right of the swimmer to spawn a barrier that can redirect monsters.
Right click above or below the swimmer to spawn a barrier that can redirect mines.
The mine and monster barriers can also redirect the evolved monsters that swim diagonally.
Pressing control spawns a probe at the swimmer's location that will go towards the mouse cursor to give you vision in a direction.
Press shift to turn your light off and on to hide from the angler.
For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not
automatically stop being dragged when releasing left click. Press Numpad 0 to temporarily avoid monsters.
", 125, 7000);
}
if (room == InstructionsPageTwo) {
draw_text_ext(0, 0, 
@"Swimmer Right (Multiplayer).
W To Swim Up, S To Swim Down, A To Swim Left, D To Swim Right.
J spawns a barrier to the left of the swimmer and L spawns a barrier to the right of the swimmer that can redirect monsters.
I spawns a barrier above the swimmer and K spawns a barrier below the swimmer that can redirect mines.
Pressing space spawns a probe at the swimmer's location. There can be three probes at a time.
", 125, 7000);
}
if (room == InstructionsPageThree) {
draw_text_ext(0, 0, 
@"WASD Controls (keyboard-only controls) (activated by the WASD Controls button in options, deactivates all other control schemes).
W To Swim Up, S To Swim Down, A To Swim Left, D To Swim Right.
Double tapping A spawns a barrier to the left of the swimmer and double tapping D spawns a barrier to the right of the swimmer
that can redirect monsters. Double tapping W spawns a barrier above the swimmer and double tapping S spawns a barrier below
the swimmer that can redirect mines. The mine and monster barriers can also redirect the evolved monsters that swim diagonally.
Pressing shift spawns a probe at the swimmer's location that will move at an angle of 0 degrees, 45 degrees, 90 degrees, 135 degrees,
180 degrees, 235 degrees, 270 degrees, or 315 degrees depending on the swimmer's direction and movement to give you vision in 
For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not
automatically stop being dragged when releasing left click. Press F to temporarily avoid monsters.
", 125, 7000);
}
if (room == InstructionsPageFour) {
draw_text_ext(0, 0, 
@"Arrow Key Controls (keyboard-only controls) (activated by the Arrow Key Controls button in options, deactivates all other control
schemes). Up Arrow Key To Swim Up, Down Arrow Key To Swim Down, Left Arrow Key To Swim Left, Right Arrow Key To Swim Right.
Double tapping the Left Arrow Key spawns a barrier to the left of the swimmer and double tapping the Right Arrow Key spawns 
barrier to the right of the swimmer that can redirect monsters. Double tapping the Up Arrow Key spawns a barrier above the swimmer and
double tapping the Down Arrow Key spawns a barrier below the swimmer that can redirect mines. The mine and monster barriers can also
Pressing num pad 0 spawns a probe at the swimmer's location that will move at an angle of 0 degrees, 45 degrees, 90 degrees, 135
redirect the evolved monsters that swim diagonally.
degrees, 180 degrees, 235 degrees, 270 degrees, or 315 degrees depending on the swimmer's direction and movement to give you vision
in a direction. Press num pad 1 to turn your light off and on to hide from the angler.
For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not
automatically stop being dragged when releasing left click. Press control to temporarily avoid monsters
", 125, 7000);
}
if (room == MainMenu) {
    draw_text_transformed(2230, 100, "The", 4, 4, 0);
    draw_text_transformed(2130, 400, "Deep", 4, 4, 0);
}
if (room == Levels || room == Multiplayer) {
    if (!obj_levelTracker.tutorials[0] && !obj_levelTracker.tutorials[1] && !obj_levelTracker.tutorials[2] && !obj_levelTracker.tutorials[3] && !obj_levelTracker.tutorials[4] && !obj_levelTracker.tutorials[5] && !obj_levelTracker.tutorials[6]) {
        draw_text_transformed(400, 100, "Before continuing, completing the tutorials is recommended", 2, 2, 0);
    }
}
if(room == LevelFourDifficultySelector){
    if (obj_options.options[13]) {
        draw_text_transformed(100, 100, "Collect all the pollutants or destroy all the enemies using a barrier", 2, 2, 0);
    }else{
		draw_text_transformed(1650, 100, "Collect all the pollutants", 2, 2, 0);
	}
}
if (room == TutorialClear) {
    draw_text_transformed(2000, 0, "Tutorial Passed", 2, 2, 0);
}
if (room == TutorialFailed) {
    draw_text_transformed(1800, 0, "Tutorial Not Passed", 2, 2, 0);
}
if (room == Lose) {
    draw_text_transformed(2000, 200, "The sea is a dangerous place", 1, 1, 0);
    draw_text_transformed(1850, 400, "Hopefully the next guy has better luck", 1, 1, 0);
}
if (room == LoseTwoPlayers) {
    draw_text_transformed(2000, 200, "The sea is a dangerous place", 1, 1, 0);
    draw_text_transformed(1850, 400, "Hopefully the next guys have better luck", 1, 1, 0);
}
if (room == Win) {
    draw_text_transformed(1900, 200, "This part of the ocean is now clean", 1, 1, 0);
}
if (room == WinTwoPlayers) {
    draw_text_transformed(1900, 200, "This part of the ocean is now clean", 1, 1, 0);
}
if (room == AlternateWin) {
    draw_text_transformed(850, 200, "Good job getting rid of those monsters and mines, the next guys will get the remaining pollutants", 1, 1, 0);
}
if (room == BestTimes) {
    draw_text_transformed(2200, 0, "Best Times", 1, 1, 0);
	levelText = ["Level One Easy", "Level One Medium", "Level One Hard", "Level Two Easy", "Level Two Medium", "Level Two Hard", 
	"Level Three Easy", "Level Three Medium", "Level Three Hard", "Level Four Easy", "Level Four Medium", "Level Four Hard"]
	startPosition = 100;
	for (i = 0; i < array_length(levelText); i++){
		 draw_text_transformed(0, startPosition, string(levelText[i]), 1, 1, 0);
		startPosition += 100;
	}	
	startPosition = 100;
	for (i = 0; i < array_length(obj_levelTracker.times); i++){
		if(obj_levelTracker.times[i] == 100){
			 draw_text_transformed(750, startPosition," NA", 1, 1, 0);
		}else{
			 draw_text_transformed(750, startPosition, string(obj_levelTracker.times[i]) + " seconds", 1, 1, 0);
		}

		startPosition += 100;
	}
}
if (draw_get_font() == ft_Ariel) {
    if (room == Credits) {
        draw_text_transformed(2400, 50, "Art", 1.5, 1.5, 0);
        draw_text_transformed(950, 200, " Ansimuz", 1, 1, 0);
        draw_text_transformed(850, 400, " Rapidpunches", 1, 1, 0);
        draw_text_transformed(950, 605, " Jattenalle", 1, 1, 0);
        draw_text_transformed(100, 1005, " Warlock's Gauntlet Team", 1, 1, 0);
        draw_text_transformed(850, 1205, " Rapidpunches", 1, 1, 0);
    }
    if (room == CreditsPageTwo) {
        draw_text_transformed(2300, 50, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(900, 200, " Qubodup", 1, 1, 0);
        draw_text_transformed(900, 410, " Cough-E", 1, 1, 0);
        draw_text_transformed(900, 605, " Spanac", 1, 1, 0);
        draw_text_transformed(500, 805, " Ogrebane/Artisticdude", 1, 1, 0);
        draw_text_transformed(350, 1005, " Little Robot Sound Factory", 1, 1, 0);
        draw_text_transformed(950, 1205, " Pauliuw", 1, 1, 0);
        draw_text_transformed(800, 1405, " Qubodup", 1, 1, 0);
        draw_text_transformed(300, 1605, " Michael Brigida and students", 1, 1, 0);
    }
    if (room == CreditsPageThree) {
        draw_text_transformed(2300, 50, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(400, 200, " Electricity reactor buzz", 1, 1, 0);
        draw_text_transformed(900, 400, " Remaxim", 1, 1, 0);
        draw_text_transformed(900, 605, " Spanac", 1, 1, 0);
        draw_text_transformed(850, 805, " Rubberduck", 1, 1, 0);
        draw_text_transformed(600, 1005, "  Whale song sound", 1, 1, 0);
        draw_text_transformed(650, 1205, " Blender Foundation", 1, 1, 0);
        draw_text_transformed(650, 1405, " Zero is not null", 1, 1, 0);
        draw_text_transformed(800, 1605, " HDVideoGuy", 1, 1, 0);
    }
    if (room == CreditsPageFour) {
        draw_text_transformed(2300, 50, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(850, 200, " jalastram", 1, 1, 0);
    }
    if (room == CreditsPageFive) {
        draw_text_transformed(2300, 50, "Music", 1.5, 1.5, 0);
        draw_text_transformed(850, 200, " MundoSound", 1, 1, 0);
        draw_text_transformed(950, 400, " Umplix", 1, 1, 0);
    }
    if (room == CreditsPageSix) {
        draw_text_transformed(2300, 50, "Coding", 1.5, 1.5, 0);
        draw_text_transformed(700, 200, " David Strachan", 1, 1, 0);
    }
} else if (draw_get_font() == ft_Chiller) {
    if (room == Credits) {
        draw_text_transformed(2400, 0, "Art", 1.5, 1.5, 0);
        draw_text_transformed(950, 175, " Ansimuz", 1, 1, 0);
        draw_text_transformed(850, 375, " Rapidpunches", 1, 1, 0);
        draw_text_transformed(950, 580, " Jattenalle", 1, 1, 0);
        draw_text_transformed(100, 980, " Warlock's Gauntlet Team", 1, 1, 0);
        draw_text_transformed(850, 1180, " Rapidpunches", 1, 1, 0);
    }
    if (room == CreditsPageTwo) {
        draw_text_transformed(2300, 0, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(900, 175, " Qubodup", 1, 1, 0);
        draw_text_transformed(900, 375, " Cough-E", 1, 1, 0);
        draw_text_transformed(900, 580, " Spanac", 1, 1, 0);
        draw_text_transformed(500, 780, " Ogrebane/Artisticdude", 1, 1, 0);
        draw_text_transformed(350, 980, " Little Robot Sound Factory", 1, 1, 0);
        draw_text_transformed(950, 1180, " Pauliuw", 1, 1, 0);
        draw_text_transformed(800, 1380, " Qubodup", 1, 1, 0);
        draw_text_transformed(300, 1580, " Michael Brigida and students", 1, 1, 0);
    }
    if (room == CreditsPageThree) {
        draw_text_transformed(2300, 0, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(400, 175, " Electricity reactor buzz", 1, 1, 0);
        draw_text_transformed(900, 375, " Remaxim", 1, 1, 0);
        draw_text_transformed(900, 580, " Spanac", 1, 1, 0);
        draw_text_transformed(850, 780, " Rubberduck", 1, 1, 0);
        draw_text_transformed(600, 980, "  Whale song sound", 1, 1, 0);
        draw_text_transformed(650, 1180, " Blender Foundation", 1, 1, 0);
        draw_text_transformed(650, 1380, " Zero is not null", 1, 1, 0);
        draw_text_transformed(800, 1580, " HDVideoGuy", 1, 1, 0);
    }
	if (room == CreditsPageFour) {
        draw_text_transformed(2300, 0, "Sound", 1.5, 1.5, 0);
        draw_text_transformed(900, 175, " jalastram", 1, 1, 0);
    }
    if (room == CreditsPageFive) {
        draw_text_transformed(2300, 0, "Music", 1.5, 1.5, 0);
        draw_text_transformed(850, 175, " MundoSound", 1, 1, 0);
        draw_text_transformed(950, 375, " Umplix", 1, 1, 0);
    }
    if (room == CreditsPageSix) {
        draw_text_transformed(2300, 0, "Coding", 1.5, 1.5, 0);
        draw_text_transformed(700, 175, " David Strachan", 1, 1, 0);
    }
}
