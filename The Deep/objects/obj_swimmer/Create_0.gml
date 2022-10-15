instance_create_layer(x,y,"Instances", obj_light);
instance_deactivate_layer("Puzzle")
instance_deactivate_layer("Pollutants")
instance_deactivate_layer("Extra")
audio_listener_orientation(0,-1,0,0,0,1)
vsp = 0;
hsp = 0;
mvspeed = 6
leftArrowDoubleClick = 0;
rightArrowDoubleClick = 0;
UpArrowDoubleClick = 0;
downArrowDoubleClick = 0;
numPollutants = instance_number(obj_brownWhite_beige) + instance_number(obj_greenRed_yellow)+ instance_number(obj_orangeBlue_brown) + instance_number(obj_redBlue_violet) + instance_number(obj_redYellow_orange) + instance_number(obj_whiteBlack_grey) + instance_number(obj_whiteRed_pink) + instance_number(obj_yellowBlue_green)
obj_levelTracker.swimmerOneNumPollutants = numPollutants;
text ="";
swimmerSkin = obj_microtransactions.swimmerSkin;
if(swimmerSkin){
	sprite_index = spr_blackswimmerIdleRight
}
numMonsterBarriers = 0;
numMineBarriers = 0;
probeExists = false;

hardMode = false;
singleplayer = true
yCollision = false;
xCollision = false;

delayTime = 5;
extraLifeTime = 5;
timer = 0;
alarm[0] = 60;
alarm[1] = 60;
alarm[2] = 60;
alarm[3] = 10;


IDOL = 0;
MOVING = 1;
currentState = IDOL;

