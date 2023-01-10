function setDirectionAndSpeed(target, light) {
    if (instance_exists(light)) {
        direction = point_direction(x, y, target.x, target.y)
        if (obj_microtransactions.extraLife) {
            speed = 0;
        } else {
            if (obj_microtransactions.enemiesSlowed || obj_options.decreaseReactionTimeRequired) {
                speed = 5;
            } else {
                speed = 7; //7
            }
        }
    } else {
        speed = 0;
    }
}

function setHorrorSpriteIndex(target) {
    if (target.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (target.x > x) {
        sprite_index = spr_horrorRight
    }
}
function horrorLayerManipulation(microtransaction) {
    if (microtransaction == "Extra") {
        instance_activate_layer("Extra")
    } else if (microtransaction == "Wait") {
        instance_create_layer(2400, 0, "Wait", obj_wait)
        instance_activate_layer("Wait")
    }
    instance_deactivate_layer("Instances")
    instance_deactivate_layer("LightInstance")
    instance_deactivate_layer("AmbientBackground")
}