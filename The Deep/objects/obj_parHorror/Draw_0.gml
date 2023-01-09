draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (instance_exists(obj_swimmerOne)) {
    if (point_distance(obj_parSwimmer.x, obj_parSwimmer.y, x, y) <= audioMaxDistanceToBeHeard && isPlayingSound) {
		if(obj_options.closedCaptioning){
			draw_text_transformed_colour(x, y + 200, "[The Angler Growls]", .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
		}
    }
    if (!obj_swimmerOne.singleplayer) {
        text = ""
    }
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(tutorialEnemy){
	if (obj_trainer.horrorFollowing) {
    if (obj_trainer.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (obj_trainer.x > x) {
        sprite_index = spr_horrorRight
    }
}else{
    if (obj_swimmerOne.x < x) {
        sprite_index = spr_horrorLeft
    }
    if (obj_swimmerOne.x > x) {
        sprite_index = spr_horrorRight
    }
}
}else{
	if (obj_swimmerOne.x < x) {
    sprite_index = spr_horrorLeft
}
if (obj_swimmerOne.x > x) {
    sprite_index = spr_horrorRight
}

}




















