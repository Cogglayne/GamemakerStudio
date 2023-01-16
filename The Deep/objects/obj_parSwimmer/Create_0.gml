instance_create_layer(x, y, "Instances", light);
// layer manipulation
instance_deactivate_layer("Extra")
instance_deactivate_layer("Wait")
instance_deactivate_layer("Transition")
// swimmer status tracking
hardMode = false;
singleplayer = true
// sound
audio_listener_orientation(0, -1, 0, 0, 0, 1)
state = 0;
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
obj_levelTracker.swimmerOneNumPollutants = instance_number(obj_parPollutant);
obj_levelTracker.swimmerTwoNumPollutants = instance_number(obj_swimmerTwoPollutant);
// text
text = "";
// cosmetic skin
swimmerSkin = obj_microtransactions.microtransactions[3];
if (swimmerSkin) {
    sprite_index = spr_blackswimmerIdleRight
}
// microtransactions
if (obj_microtransactions.microtransactions[7]) {
    obj_microtransactions.microtransactions[6] = true;
}
if (obj_microtransactions.microtransactions[9]) {
    obj_microtransactions.microtransactions[8] = true;
}
// swimmer object tracking
numMonsterBarriers = 0;
numMineBarriers = 0;
probeExists = false;
numProbes = 0;
// collision tracking
yCollision = false;
xCollision = false;
// timer 
delayTime = 5;
extraLifeTime = 5;
avoidanceTimer = 0;
timer = 0;
// avoidance 
avoidanceTime = false;
avoidanceCharges = 4;
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
