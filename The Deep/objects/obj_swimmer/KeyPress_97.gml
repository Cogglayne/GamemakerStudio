// if single player is active and right hand controls are active
// destroys or creates the swimmer's light
if (singleplayer == true) {
    if (obj_disabilities.rightHandControls) {
        audio_play_sound(snd_light, 1, 0)
        if (instance_exists(obj_playerOneLight)) {
            instance_destroy(obj_playerOneLight)
        } else {
            instance_create_layer(obj_swimmer.x, obj_swimmer.y, "Instances", obj_playerOneLight);
            obj_playerOneLight.xBoundry = obj_levelTracker.lightX;
            obj_playerOneLight.yBoundry = obj_levelTracker.lightY;
        }
    }
}























