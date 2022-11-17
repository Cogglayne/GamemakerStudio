instance_create_layer(x, y, "Instances", obj_light);
// layer manipulation
instance_deactivate_layer("Puzzle")
instance_deactivate_layer("Pollutants")
instance_deactivate_layer("Extra")
instance_deactivate_layer("Wait")
// sound
audio_listener_orientation(0, -1, 0, 0, 0, 1)
// movement
vsp = 0;
hsp = 0;
mvspeed = 6
// double tapping keys
leftArrowDoubleClick = 0;
rightArrowDoubleClick = 0;
UpArrowDoubleClick = 0;
downArrowDoubleClick = 0;
// pollutant tracking
numPollutants = instance_number(obj_brownWhite_beige) + instance_number(obj_greenRed_yellow) + instance_number(obj_orangeBlue_brown) + instance_number(obj_redBlue_violet) + instance_number(obj_redYellow_orange) + instance_number(obj_whiteBlack_grey) + instance_number(obj_whiteRed_pink) + instance_number(obj_yellowBlue_green)
obj_levelTracker.swimmerOneNumPollutants = numPollutants;
// text
text = "";
// cosmetic skin
swimmerSkin = obj_microtransactions.swimmerSkin;
if (swimmerSkin) {
    sprite_index = spr_blackswimmerIdleRight
}
// swimmer object tracking
numMonsterBarriers = 0;
numMineBarriers = 0;
probeExists = false;
// swimmer status tracking
hardMode = false;
singleplayer = true
// collision tracking
yCollision = false;
xCollision = false;
// timer 
delayTime = 5;
extraLifeTime = 5;
timer = 0;
// timers
alarm[0] = 60;
alarm[1] = 60;
alarm[2] = 60;
alarm[3] = 10;
// state 
IDOL = 0;
MOVING = 1;
currentState = IDOL;
// checks if swimmer is in a level
isPlaying = false;