//instance_create_layer(480, 1000, "Instances", obj_swimmer);
//instance_create_layer(4520, 1000, "Instances", obj_swimmerTwo);
if (instance_exists(obj_swimmerOne)) {
    swimmerOneExists = true;
} else {
    swimmerOneExists = false;
}
if (instance_exists(obj_swimmerTwo)) {
    swimmerTwoExists = true;
} else {
    swimmerTwoExists = false;
}

if (!swimmerOneExists && swimmerOneSpawnTime == 1) {
    instance_create_layer(480, 1000, "Instances", obj_swimmerOne);
    obj_swimmerOne.mvspeed = obj_levelTracker.swimmerOneMVSpeed;
    obj_playerOneLight.xBoundry = obj_levelTracker.lightX;
    obj_playerOneLight.yBoundry = obj_levelTracker.lightY;
    obj_swimmerOne.text = obj_levelTracker.swimmerOneText;
    obj_swimmerOne.singleplayer = false;
}
if (!swimmerTwoExists && swimmerTwoSpawnTime == 1) {
    instance_create_layer(4520, 1000, "Instances", obj_swimmerTwo);
    obj_swimmerTwo.mvspeed = obj_levelTracker.swimmerTwoMVSpeed;
    obj_playerTwoLight.xBoundry = obj_levelTracker.lightTwoX;
    obj_playerTwoLight.yBoundry = obj_levelTracker.lightTwoY;
    obj_swimmerTwo.text = obj_levelTracker.swimmerTwoText;
    obj_swimmerTwo.singleplayer = false;
}








