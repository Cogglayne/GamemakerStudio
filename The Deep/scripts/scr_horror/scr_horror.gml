function setDirectionAndSpeed(target, light) {
    if (instance_exists(light)) {
        direction = point_direction(x, y, target.x, target.y)
        if (obj_microtransactions.microtransactions[4]) {
            speed = 0;
        } else {
            if (obj_microtransactions.microtransactions[8] || obj_options.options[3]) {
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
