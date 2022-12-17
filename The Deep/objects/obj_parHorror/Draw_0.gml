draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (instance_exists(obj_swimmer)) {
    if (point_distance(obj_swimmer.x, obj_swimmer.y, x, y) <= audioMaxDistanceToBeHeard && point_distance(obj_swimmer.x, obj_swimmer.y, x, y) >= audioMaxDistanceToBeHeard - 300) {
		if(obj_disabilities.closedCaptioning){
			draw_text_transformed_colour(x, y + 200, "[The Angler Growls]", .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
		}
    }
    if (!obj_swimmer.singleplayer) {
        text = ""
    }
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(tutorialEnemy){
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

}else{
	if (obj_swimmer.x < x) {
    sprite_index = spr_horrorLeft
}
if (obj_swimmer.x > x) {
    sprite_index = spr_horrorRight
}

}




















