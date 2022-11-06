// saves variables for respawning player one
if(instance_exists(obj_swimmer)){
swimmerOneMVSpeed = obj_swimmer.mvspeed
if(instance_exists(obj_light)){
lightX = obj_light.xBoundry
lightY = obj_light.yBoundry
}
swimmerOneText = obj_swimmer.text
swimmerOneSinglePlayer = obj_swimmer.singleplayer
}
// saves variables for respawning player two
if(instance_exists(obj_swimmerTwo)){
swimmerTwoMVSpeed = obj_swimmerTwo.mvspeed
lightTwoX = obj_lightPlayerTwo.xBoundry
lightTwoY = obj_lightPlayerTwo.yBoundry
swimmerTwoText = obj_swimmerTwo.text
swimmerTwoSinglePlayer = obj_swimmerTwo.singleplayer
}
