draw_self();
if (obj_swimmerOne.sprite_index == spr_swimmerIdleLeft || obj_swimmerOne.sprite_index == spr_swimmerIdleRight) {
    sprite_index = spr_fishFriendRight
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingUpLeft || obj_swimmerOne.sprite_index == spr_swimmerSwimmingUpRight) {
    sprite_index = spr_fishFriendUpLeft
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingDownLeft || obj_swimmerOne.sprite_index == spr_swimmerSwimmingDownRight) {
    sprite_index = spr_fishFriendDownLeft
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingLeft || obj_swimmerOne.sprite_index == spr_swimmerSwimmingRight) {
    sprite_index = spr_fishFriendRight
}

if (obj_swimmerOne.sprite_index == spr_swimmerIdleRight) {
    sprite_index = spr_fishFriendLeft
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingUpRight) {
    sprite_index = spr_fishFriendUpRight
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingDownRight) {
    sprite_index = spr_fishFriendDownRight
} else if (obj_swimmerOne.sprite_index == spr_swimmerSwimmingRight) {
    sprite_index = spr_fishFriendLeft
}











