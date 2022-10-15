if(obj_disabilities.dyslexia){
draw_set_font(ft_dyslexia)
}else if (!obj_disabilities.dyslexia){
draw_set_font(ft_scaryFont);
}
if (room == MainMenu){
	draw_text_transformed(2230,100,"The",4,4,0);
	draw_text_transformed(2130,400,"Deep",4,4,0);
}
if (room == TutorialClear){
draw_text_transformed(1900,0,"Tutorial Passed",2,2,0);	
}
if (room == TutorialFailed){
draw_text_transformed(1800,0,"Tutorial Not Passed",2,2,0);	
}
if (room == Instructions){
	draw_text_transformed(0,0," Swim into the insanity totem to begin challenge mode (single player)",1,1,0);
	draw_text_transformed(0,100," There are normal totems, swim into them to receive increased swim speed or vision",1,1,0);
	draw_text_transformed(0,200," There are cursed totems swimming into them gives a higher amount of speed or vision but also causes a reduction in the other stat",1,1,0);
	draw_text_transformed(0,300," Standard Controls (activated by the standard button in options, deactivates all other control schemes)",1,1,0);
	draw_text_transformed(0,400,"Swimmer Left (player on the left side of the level)",1,1,0);
	draw_text_transformed(0,500," Up Arrow Key To Swim Up, Down Arrow Key To Swim Down, Left Arrow Key To Swim Left, Right Arrow Key To Swim Right",1,1,0);
	draw_text_transformed(0,600," Left click to the left or right of the swimmer to spawn a barrier that can redirect monsters",1,1,0);
	draw_text_transformed(0,700," Right click above or below the swimmer to spawn a barrier that can redirect mines",1,1,0);
	draw_text_transformed(0,800," The mine and monster barriers can also redirect the evolved monsters that swim diagonally",1,1,0);
	draw_text_transformed(0,900," The swimmer can only have one barrier of each type active at a time, redirecting a monster or mine will break that barrier",1,1,0);
	draw_text_transformed(0,1000," The same applies for redirecting the evolved monster with either barrier type",1,1,0);
	draw_text_transformed(0,1100," Pressing control spawns a probe at the swimmer's location that will go towards the mouse cursor to give you vision in a direction",1,1,0);
	draw_text_transformed(0,1200," There can only be one probe at a time. The probe will break if it collides with a mine, monster, or the edge of the room",1,1,0);
	draw_text_transformed(0,1300," Press shift to turn your light off and on to hide from the angler",1,1,0);
	draw_text_transformed(0,1400," For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not",1,1,0);
	draw_text_transformed(0,1500," automatically stop being dragged when releasing left click",1,1,0);
}
if (room == InstructionsPageTwo){
	draw_text_transformed(0,0,"Swimmer Right (player on the right side of the level)(Multiplayer)",1,1,0);
	draw_text_transformed(0,100," W To Swim Up, S To Swim Down, A To Swim Left, D To Swim Right",1,1,0);
	draw_text_transformed(0,200," J spawns a barrier to the left of the swimmer and L spawns a barrier to the right of the swimmer that can redirect monsters",1,1,0);
	draw_text_transformed(0,300," I spawns a barrier above the swimmer and K spawns a barrier below the swimmer that can redirect mines",1,1,0);
	draw_text_transformed(0,400," The swimmer can only have one barrier of each type active at a time, redirecting a monster or mine will break that barrier",1,1,0);
	draw_text_transformed(0,500," Pressing space spawns a probe at the swimmer's location. There can be three probes at a time.",1,1,0);
	draw_text_transformed(0,600," A probe will break if it collides with a mine, monster or if a fourth probe is spawned",1,1,0);

}
if (room == InstructionsPageThree){
draw_text_transformed(0,0," Left Handed Controls (activated by the left handed button in options, deactivates all other control schemes)",1,1,0);
draw_text_transformed(0,100," W To Swim Up, S To Swim Down, A To Swim Left, D To Swim Right",1,1,0);
draw_text_transformed(0,200," Double tapping A spawns a barrier to the left of the swimmer and double tapping D spawns a barrier to the right of the swimmer",1,1,0);
draw_text_transformed(0,300," that can redirect monsters. Double tapping W spawns a barrier above the swimmer and double tapping S spawns",1,1,0);
draw_text_transformed(0,400," a barrier below the swimmer that can redirect mines. The mine and monster barriers can also redirect ",1,1,0);
draw_text_transformed(0,500," the evolved monsters that swim diagonally. The swimmer can only have one barrier of each type active at a time, redirecting a monster",1,1,0);
draw_text_transformed(0,600," or mine will break that barrier. The same applies for redirecting the evolved monster with either barrier type. Pressing shift spawns",1,1,0);
draw_text_transformed(0,700," a probe at the swimmer's location that will move at an angle of 0 degrees, 45 degrees, 90 degrees, 135 degrees, 180 degrees,",1,1,0);
draw_text_transformed(0,800," 235 degrees, 270 degrees, or 315 degrees depending on the swimmer's direction and movement to give you vision in a direction. ",1,1,0);
draw_text_transformed(0,900," Facing right or going right 0 degrees, going left and down 235 degrees, right and up 45 degrees, right and down 315 degrees,",1,1,0);
draw_text_transformed(0,1000," left and up 135 degrees, straight up 90 degrees, facing left or going left 180 degrees, straight down 270 degrees",1,1,0);
draw_text_transformed(0,1100," There can only be one probe at a time. The probe will break if it collides with a mine, monster, or the edge of the room",1,1,0);
draw_text_transformed(0,1200," Press caps lock to turn your light off and on to hide from the angler.",1,1,0);
draw_text_transformed(0,1300," For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not",1,1,0);
draw_text_transformed(0,1400," automatically stop being dragged when releasing left click",1,1,0);
}
if (room == InstructionsPageFour){
draw_text_transformed(0,0," Right Handed Controls (activated by the right handed button in options, deactivates all other control schemes)",1,1,0);
draw_text_transformed(0,100," Up Arrow Key To Swim Up, Down Arrow Key To Swim Down, Left Arrow Key To Swim Left, Right Arrow Key To Swim Right",1,1,0);
draw_text_transformed(0,200," Double tapping the Left Arrow Key spawns a barrier to the left of the swimmer and double tapping the Right Arrow Key spawns a",1,1,0);
draw_text_transformed(0,300," barrier to the right of the swimmer that can redirect monsters. Double tapping the Up Arrow Key spawns a barrier above the swimmer and",1,1,0);
draw_text_transformed(0,400," double tapping the Down Arrow Key spawns a barrier below the swimmer that can redirect mines. The mine and monster barriers can also",1,1,0);
draw_text_transformed(0,500," redirect the evolved monsters that swim diagonally. The swimmer can only have one barrier of each type active at a time, redirecting a",1,1,0);
draw_text_transformed(0,600," monster or mine will break that barrier. The same applies for redirecting the evolved monster with either barrier type. Pressing num pad 0 ",1,1,0);
draw_text_transformed(0,700," spawns a probe at the swimmer's location that will move at an angle of 0 degrees, 45 degrees, 90 degrees, 135 degrees, 180 degrees,",1,1,0);
draw_text_transformed(0,800," 235 degrees, 270 degrees, or 315 degrees depending on the swimmer's direction and movement to give you vision in a direction. ",1,1,0);
draw_text_transformed(0,900," Facing right or going right 0 degrees, going left and down 235 degrees, right and up 45 degrees, right and down 315 degrees,",1,1,0);
draw_text_transformed(0,1000," left and up 135 degrees, straight up 90 degrees, facing left or going left 180 degrees, straight down 270 degrees",1,1,0);
draw_text_transformed(0,1100," There can only be one probe at a time. The probe will break if it collides with a mine, monster, or the edge of the room.",1,1,0);
draw_text_transformed(0,1200," Press num pad 1 to turn your light off and on to hide from the angler.",1,1,0);
draw_text_transformed(0,1300," For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not",1,1,0);
draw_text_transformed(0,1400," automatically stop being dragged when releasing left click",1,1,0);
}
if (room == InstructionsPageFive){
draw_text_transformed(0,0," Poor Reactivity Controls (activated by the poor reactivity button in options, deactivates all other control schemes)",1,1,0);
draw_text_transformed(0,100," Up Arrow Key To Swim Up, Down Arrow Key To Swim Down, Left Arrow Key To Swim Left, Right Arrow Key To Swim Right",1,1,0);
draw_text_transformed(0,200," Left click to the left or right of the swimmer to spawn a barrier that can redirect monsters",1,1,0);
draw_text_transformed(0,300," Right click above or below the swimmer to spawn a barrier that can redirect mines",1,1,0);
draw_text_transformed(0,400," The mine and monster barriers can also redirect the evolved monsters that swim diagonally",1,1,0);
draw_text_transformed(0,500," The swimmer can only have one barrier of each type active at a time, redirecting a monster or mine will break that barrier",1,1,0);
draw_text_transformed(0,600," The same applies for redirecting the evolved monster with either barrier type",1,1,0);
draw_text_transformed(0,700," Pressing control spawns a probe at the swimmer's location that will go towards the mouse cursor to give you vision in a direction",1,1,0);
draw_text_transformed(0,800," There can only be one probe at a time. The probe will break if it collides with a mine, monster, or the edge of the room",1,1,0);
draw_text_transformed(0,900," Press shift to turn your light off and on to hide from the angler",1,1,0);
draw_text_transformed(0,1000," For the puzzle drag the pollutants to their disposal unit using left click, left click again if the pollutant does not",1,1,0);
draw_text_transformed(0,1100," automatically stop being dragged when releasing left click",1,1,0);
}
if (room == InstructionsPageSix){
draw_text_transformed(0,0," Blind Mode is activated and deactivated by the blind mode button in options",1,1,0);
}
if(draw_get_font() == ft_dyslexia){
	if (room == Credits){
	draw_text_transformed(2400,50,"Art",1.5,1.5,0);
	draw_text_transformed(950,200," Ansimuz",1,1,0);
	draw_text_transformed(850,400," Rapidpunches",1,1,0);
	draw_text_transformed(950,605," Jattenalle",1,1,0);
	draw_text_transformed(100,1005," Warlock's Gauntlet Team",1,1,0);
	draw_text_transformed(850,1205," Rapidpunches",1,1,0);
}
if(room == CreditsPageTwo){
	draw_text_transformed(2300,50,"Sound",1.5,1.5,0);
	draw_text_transformed(900,200," Qubodup",1,1,0);
	draw_text_transformed(900,410," Cough-E",1,1,0);
	draw_text_transformed(900,605," Spanac",1,1,0);
	draw_text_transformed(500,805," Ogrebane/Artisticdude",1,1,0);
	draw_text_transformed(350,1005," Little Robot Sound Factory",1,1,0);
	draw_text_transformed(950,1205," Pauliuw",1,1,0);
	draw_text_transformed(800,1405," Qubodup",1,1,0);
	draw_text_transformed(300,1605," Michael Brigida and students",1,1,0);
}
if(room == CreditsPageTwoContinued){
	draw_text_transformed(2300,50,"Sound",1.5,1.5,0);
	draw_text_transformed(400,200," Electricity reactor buzz",1,1,0);
	draw_text_transformed(900,400," Remaxim",1,1,0);
	draw_text_transformed(900,605," Spanac",1,1,0);
	draw_text_transformed(850,805," Rubberduck",1,1,0);
	draw_text_transformed(600,1005,"  Whale song sound",1,1,0);
	draw_text_transformed(650,1205," Blender Foundation",1,1,0);
	draw_text_transformed(650,1405," Zero is not null",1,1,0);
	draw_text_transformed(800,1605," HDVideoGuy",1,1,0);
}
if(room == CreditsPageThree){
	draw_text_transformed(2300,50,"Music",1.5,1.5,0);
	draw_text_transformed(850,200," MundoSound",1,1,0);
	draw_text_transformed(950,400," Umplix",1,1,0);
}
}else if (draw_get_font() == ft_scaryFont){
	if (room == Credits){
	draw_text_transformed(2400,0,"Art",1.5,1.5,0);
	draw_text_transformed(950,175," Ansimuz",1,1,0);
	draw_text_transformed(850,375," Rapidpunches",1,1,0);
	draw_text_transformed(950,580," Jattenalle",1,1,0);
	draw_text_transformed(100,980," Warlock's Gauntlet Team",1,1,0);
	draw_text_transformed(850,1180," Rapidpunches",1,1,0);
}
if(room == CreditsPageTwo){
	draw_text_transformed(2300,0,"Sound",1.5,1.5,0);
	draw_text_transformed(900,175," Qubodup",1,1,0);
	draw_text_transformed(900,375," Cough-E",1,1,0);
	draw_text_transformed(900,580," Spanac",1,1,0);
	draw_text_transformed(500,780," Ogrebane/Artisticdude",1,1,0);
	draw_text_transformed(350,980," Little Robot Sound Factory",1,1,0);
	draw_text_transformed(950,1180," Pauliuw",1,1,0);
	draw_text_transformed(800,1380," Qubodup",1,1,0);
	draw_text_transformed(300,1580," Michael Brigida and students",1,1,0);
}
if(room == CreditsPageTwoContinued){
	draw_text_transformed(2300,0,"Sound",1.5,1.5,0);
	draw_text_transformed(400,175," Electricity reactor buzz",1,1,0);
	draw_text_transformed(900,375," Remaxim",1,1,0);
	draw_text_transformed(900,580," Spanac",1,1,0);
	draw_text_transformed(850,780," Rubberduck",1,1,0);
	draw_text_transformed(600,980,"  Whale song sound",1,1,0);
	draw_text_transformed(650,1180," Blender Foundation",1,1,0);
	draw_text_transformed(650,1380," Zero is not null",1,1,0);
	draw_text_transformed(800,1580," HDVideoGuy",1,1,0);
}
if(room == CreditsPageThree){
	draw_text_transformed(2300,0,"Music",1.5,1.5,0);
	draw_text_transformed(850,175," MundoSound",1,1,0);
	draw_text_transformed(950,375," Umplix",1,1,0);
}
}

if (room == Lose){
	draw_text_transformed(2000,200,"The sea is a dangerous place",1,1,0);
	draw_text_transformed(1850,400,"Hopefully the next guy has better luck",1,1,0);
}
if (room == LoseTwoPlayers){
	draw_text_transformed(2000,200,"The sea is a dangerous place",1,1,0);
	draw_text_transformed(1850,400,"Hopefully the next guys have better luck",1,1,0);
}
if (room == Win){
	draw_text_transformed(1900,200,"This part of the ocean is now clean",1,1,0);
}
if (room == WinTwoPlayers){
	draw_text_transformed(1900,200,"This part of the ocean is now clean",1,1,0);
}
if (room == Grading){
	draw_text_transformed(2100,0,"Motivations",2,2,0);
	draw_text_transformed(0,100,"Bartle's Gamer Types ",1,1,0);
	draw_text_transformed(0,200,"Killers: Best time button goes to a room that stores the best time for each level, killer/achiever motivations are saved between plays",1,1,0);
	draw_text_transformed(0,300,"Achievers: Challenge mode that is activated by swimming into the totem of insanity, completing the challenge changes that level's button",1,1,0);
	draw_text_transformed(0,400,"Socializers: Multiplayer- each player has pollutants only they can pick up, one player has moving probes the other has stationary probes ",1,1,0);
	draw_text_transformed(0,500,"Explorers: Hidden objects that give increased stats and can only be found with the probe light, locations indicated by bigger pollutants ",1,1,0);
	draw_text_transformed(2000,600,"Casual Gamers",2,2,0);
	draw_text_transformed(0,800,"Difficulty Setting: Easy to Medium and Medium to Hard has the player find the same number of pollutants as the previous difficulty plus an",1,1,0);
	draw_text_transformed(0,900,"additional two pollutants. Increasing difficulty also progressively lessens the players field of view. From Easy to Medium an additional enemy",1,1,0);
	draw_text_transformed(0,1000,"type is added that is bigger and moves diagonally adding a new direction that the player has to watch. From Medium to Hard the angler is",1,1,0);
	draw_text_transformed(0,1100,"added. The angler alternates between spawning on the left and right side of the level first spawning on the right. The angler will chase the",1,1,0);
	draw_text_transformed(0,1200,"swimmer as long as the swimmer's light is active. Requiring the player to turn their field of view off and on to keep away from the angler",1,1,0);
	draw_text_transformed(0,1300,"Puzzle: After collecting the pollutants on each level the pollutants need to be propery disposed of. The player needs to match the",1,1,0);
	draw_text_transformed(0,1400,"pollutants with their proper disposal unit. The pollutant's colors indicate which unit it should go and this is hinted at during the puzzle",1,1,0);
	draw_text_transformed(0,1500,"pollutants that are brown and white go to the beige disposal unit, green and red to the yellow disposal unit, orange and blue to the brown",1,1,0);
	draw_text_transformed(0,1600,"disposal unit, red and blue to the violet disposal unit, red and yellow to the orange disposal unit, white and black to the grey disposal unit",1,1,0);
}
if(room == GradingPageTwo){
	draw_text_transformed(0,0,"white and red to the pink disposal unit, yellow and blue to the green disposal unit. The correct disposal unit is determined by how the",1,1,0)
	draw_text_transformed(0,100,"pollutant's colors combine. Brown and white make beige, green and red make yellow, orange and bue make brown, red and blue make violet,",1,1,0)
	draw_text_transformed(0,200,"red and yellow make orange, white and black make grey, white and red make pink, yellow and blue make green.",1,1,0)
	draw_text_transformed(0,300,"Microtransactions: There is a store that includes an environmental cosmetic that changes the light for the field of view, and there is a ",1,1,0)
	draw_text_transformed(0,400,"a cosmetic skin for the swimmer. Also before each level the player is taken to a screen where they can activate optional player buffs or  ",1,1,0)
	draw_text_transformed(0,500,"enemy debuffs for a dollar. They can either delay the swimmer's timer to enable them to get a better time for a level they have mastered, ",1,1,0)
	draw_text_transformed(0,600,"or they can slow down enemies. Finally when the player dies they are taken to a screen where they are given the option to continue  ",1,1,0)
	draw_text_transformed(0,700,"the level for a dollar. The player is given temporary immunity afterwards. The angler will stop following the player while they are ",1,1,0)
	draw_text_transformed(0,800,"immune. Each microtransaction is aimed at different types of players. The store has microtransactions for people who like to make their",1,1,0)
	draw_text_transformed(0,900,"character look different, or players who want a different aesthetic. The timer buff is for people who are competitive, the debuff that slows",1,1,0)
	draw_text_transformed(0,1000,"enemies is for the more methodical players, new players, or for players who are completionists. The extra life microtransaction is for",1,1,0)
	draw_text_transformed(0,1100,"players who for whatever reason want to continue the level no matter what, competitiveness, completionist, etc. Once bought the store",1,1,0)
	draw_text_transformed(0,1200,"cosemetics can be toggled on or off.",1,1,0)
}
if(room == GradingPageThree){
draw_text_transformed(1900,0,"Physical Disabilities",2,2,0);
draw_text_transformed(0,200,"For left handed players I made the swimmer move using WASD. I also enabled making barriers by double tapping the left handed",1,1,0)
draw_text_transformed(0,300,"movement keys. I made the probe spawn by pressing shift and made its direction based on the swimmer's direction and movement instead of",1,1,0)
draw_text_transformed(0,400,"moving towards the mouse cursor. The probe will move at 0 degrees, 45 degrees, 90 degrees, 135 degrees, 180 degrees, 235 degrees,",1,1,0)
draw_text_transformed(0,500,"270 degrees, or 315 degrees. Finally I made turning the swimmer's light off and on done by pressing the caps lock key.",1,1,0)
draw_text_transformed(0,600,"For right handed players I made the swimmer move using the arrows keys. I also enabled making barriers by double tapping the right",1,1,0)
draw_text_transformed(0,700,"handed movement keys. I made the probe spawn by pressing num pad 0 and made its direction based on the swimmer's direction and",1,1,0)
draw_text_transformed(0,800,"movement instead of moving towards the mouse cursor. The probe will move at 0 degrees, 45 degrees, 90 degrees, 135 degrees,",1,1,0)
draw_text_transformed(0,900,"180 degrees, 235 degrees, 270 degrees, or 315 degrees. Finally I made turning the swimmer's light off and on done by pressing",1,1,0)
draw_text_transformed(0,1000,"num pad 1.",1,1,0)
draw_text_transformed(0,1100,"For players with poor reactivity I kept the same control scheme as the standard control scheme but, I increased the distance from",1,1,0)
draw_text_transformed(0,1200,"the swimmer that barriers spawn giving these players more time to redirect enemies, I added more vision to each difficulty setting",1,1,0)
draw_text_transformed(0,1300,"to enable these players to see more of the game at once, and I slowed down all of the enemies.",1,1,0)
}
if(room == GradingPageFour){
draw_text_transformed(2100,0,"Blind Gamers",2,2,0);
draw_text_transformed(0,200,"I made it so that the sound of a scuba diver swimming is playing whenever the player moves (movement indication), I made immovable",1,1,0)
draw_text_transformed(0,300,"barriers like the edges of the game make a humming sound to indicate that the player can move no further. I used emmiters and falloff to",1,1,0)
draw_text_transformed(0,400,"make it so that an enemies sound is only fully heard within a certain distance, the further you are from that distance the quieter the",1,1,0)
draw_text_transformed(0,500,"sound is until eventually you cannot hear the sound at all. I made each enemies pitch change depending on their direction, other than the",1,1,0)
draw_text_transformed(0,600,"angler whose direction is always towards the player. The mine's pitch is higher when going up and deeper when going down. The monster's",1,1,0)
draw_text_transformed(0,700,"pitch is higher when going left and deeper when going right. The evolved monster's pitch is higher when going up and to the left",1,1,0)
draw_text_transformed(0,800,"and deeper when going down and to the right. All sound plays from the left if it is to the left of the player and to the right",1,1,0)
draw_text_transformed(0,900,"if it is to the right of the player. The pollutants play a sound to indicate when the swimmer is nearby. All buttons have an",1,1,0)
draw_text_transformed(0,1000,"have an associated sound, if the button says quit hovering over the button will say quit. Instructions and the game's title",1,1,0)
draw_text_transformed(0,1100,"have text to speek. The levels have a verbal queue that tells the player where they start out in the level, what their goal",1,1,0)
draw_text_transformed(0,1200,"is and of the dangers they need to be aware of. The instructions page is fully voiced telling blind gamers the game's controls",1,1,0)
draw_text_transformed(0,1300,"The number of pollutants remaining is spoken aloud every time the swimmer collects a pollutant. The pollutants and pollutant",1,1,0)
draw_text_transformed(0,1400,"disposal units indicate their color(s) when the player hovers over them with the mouse during the puzzle. I also made the",1,1,0)
draw_text_transformed(0,1500,"totems say their name when the swimmer gets close to them, that way the player knows which totem is which. Finally I added",1,1,0)
draw_text_transformed(0,1600,"text to speek for the puzzle text to give blind players an idea of what the puzzle solution is.",1,1,0)
}
if (room == BestTimes){
	draw_text_transformed(2200,0,"Best Times",1,1,0);
	if(obj_levelTracker.levelFourEasyTime == 100){
	draw_text_transformed(0,100,"Level Four Easy: ",1,1,0);
	}else{
	draw_text_transformed(0,100,"Level Four Easy: " + string(obj_levelTracker.levelFourEasyTime) + " seconds",1,1,0);
	}
	if(obj_levelTracker.levelFourMediumTime == 100){
	draw_text_transformed(0,200,"Level Four Medium: ",1,1,0);
	}else{
	draw_text_transformed(0,200,"Level Four Medium: " + string(obj_levelTracker.levelFourMediumTime) + " seconds",1,1,0);
	}
	if(obj_levelTracker.levelFourHardTime == 100){
	draw_text_transformed(0,300,"Level Four Hard: ",1,1,0);
	}else{
	draw_text_transformed(0,300,"Level Four Hard: " + string(obj_levelTracker.levelFourHardTime) + " seconds",1,1,0);
	}
}
if(LevelFour()){
draw_text_transformed_colour(2200, 0, "Pollutant Disposal", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_colour(1025, 100, " Each disposal unit is calibrated to neutralize a specific combination of chemicals", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_colour(1025, 200, "Each pollutant type has a unique chemical make up. Dispose of the pollutants properly", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
}