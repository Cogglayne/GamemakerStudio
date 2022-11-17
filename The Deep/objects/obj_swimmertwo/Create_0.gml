instance_create_layer(x, y, "Instances", obj_lightPlayerTwo);
vsp = 0;
hsp = 0;
mvspeed = 6
numPollutants = instance_number(obj_playerTwoPollutant);
obj_levelTracker.swimmerTwoNumPollutants = numPollutants;
swimmerSkin = obj_microtransactions.swimmerSkin;
if (swimmerSkin) {
    sprite_index = spr_blackswimmerIdleRight
}
text = "";
timer = 0;
alarm[0] = 60;
numMonsterBarriers = 0;
numMineBarriers = 0;
numProbes = 0;
hardMode = false;
singleplayer = true;

IDOL = 0;
MOVING = 1;
currentState = IDOL;