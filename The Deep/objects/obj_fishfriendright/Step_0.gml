if (obj_levelTracker.rightFishFound) {
    visible = true;
}
if (visible == true) {
    x = obj_swimmerOne.x + 150
    y = obj_swimmerOne.y
    if (obj_levelTracker.rightFishFound == false) {
        obj_levelTracker.rightFishFound = true;
        if (instance_exists(obj_playerOneLight)) {
            obj_swimmerOne.mvspeed += 2;
            obj_playerOneLight.xBoundry += .2;
            obj_playerOneLight.yBoundry += .2;
        } else {
            obj_levelTracker.swimmerOneMVSpeed += 2;
            obj_levelTracker.lightX += .2;
            obj_levelTracker.lightY += .2;
        }
    }
}





