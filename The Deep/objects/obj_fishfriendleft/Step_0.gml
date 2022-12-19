if (obj_levelTracker.leftFishFound) {
    visible = true;
}
if (visible == true) {
    x = obj_swimmer.x - 150
    y = obj_swimmer.y
    if (obj_levelTracker.leftFishFound == false) {
        obj_levelTracker.leftFishFound = true;
        if (instance_exists(obj_playerOneLight)) {
            obj_swimmer.mvspeed += 2;
            obj_playerOneLight.xBoundry += .2;
            obj_playerOneLight.yBoundry += .2;
        } else {
            obj_levelTracker.swimmerOneMVSpeed += 2;
            obj_levelTracker.lightX += .2;
            obj_levelTracker.lightY += .2;
        }
    }
}





