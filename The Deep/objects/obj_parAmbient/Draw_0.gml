if(hasASprite){
	draw_self()
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (point_distance(obj_parSwimmer.x, obj_parSwimmer.y, x, y) <= audioMaxDistanceToBeHeard && isPlayingSound) {
	if(obj_options.closedCaptioning){
		draw_text_transformed_colour(x, y - yTextOffset, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
	}
} 
draw_set_halign(fa_left);
draw_set_valign(fa_top);




















