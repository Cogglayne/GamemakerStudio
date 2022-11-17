draw_self()
if (point_distance(obj_swimmer.x, obj_swimmer.y, x, y) <= audioMaxDistanceToBeHeard) {
    text = "[The Angler Growls]";
} else {
    text = "";
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_colour(x, y + 200, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (obj_trainer.anglerTutorialActive && !obj_trainer.anglerTutorialTrial) {
    if (obj_trainer.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (obj_trainer.x > x) {
        sprite_index = spr_horrorRight
    }
}
if (obj_trainer.anglerTutorialActive && obj_trainer.anglerTutorialTrial) {
    if (obj_swimmer.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (obj_swimmer.x > x) {
        sprite_index = spr_horrorRight
    }
}
if (!obj_trainer.anglerTutorialActive && !obj_trainer.anglerTutorialTrial) {
    if (obj_trainer.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (obj_trainer.x > x) {
        sprite_index = spr_horrorRight
    }
}




















