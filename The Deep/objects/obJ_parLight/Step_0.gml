if (follow == obj_parHorror) {
    if (follow.sprite_index == spr_horrorLeft) {
        x = follow.x - 138
        y = follow.y - 125
    } else if (follow.sprite_index == spr_horrorRight) {
        x = follow.x + 138
        y = follow.y - 125
    }
} else if (follow == obj_stationaryProbe) {} else {
    if (instance_exists(follow)) {
        x = follow.x
        y = follow.y
    }
}














