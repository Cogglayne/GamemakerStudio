// saves variables for respawning player one
if (instance_exists(obj_swimmerOne)) {
    swimmerOneMVSpeed = obj_swimmerOne.mvspeed
    if (instance_exists(obj_playerOneLight)) {
        lightX = obj_playerOneLight.xBoundry
        lightY = obj_playerOneLight.yBoundry
    }
    swimmerOneText = obj_swimmerOne.text
    swimmerOneSinglePlayer = obj_swimmerOne.singleplayer
}
// saves variables for respawning player two
if (instance_exists(obj_swimmerTwo)) {
    swimmerTwoMVSpeed = obj_swimmerTwo.mvspeed
    lightTwoX = obj_playerTwoLight.xBoundry
    lightTwoY = obj_playerTwoLight.yBoundry
    swimmerTwoText = obj_swimmerTwo.text
    swimmerTwoSinglePlayer = obj_swimmerTwo.singleplayer
}
