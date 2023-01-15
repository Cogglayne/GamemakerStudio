function showClosedCaptioning(yAmount, xAmount, text){
	if (instance_exists(obj_swimmerOne)) {
    if (point_distance(obj_parSwimmer.x, obj_parSwimmer.y, x, y) <= audioMaxDistanceToBeHeard && isPlayingSound) {
        if (obj_options.options[10]) {
            if (image_xscale == 1) {
                draw_text_transformed_colour(x + xAmount, y + yAmount, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
            } else if (image_xscale == -1) {
                draw_text_transformed_colour(x - xAmount, y + yAmount, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
            }
        }
    }
    if (!obj_swimmerOne.singleplayer) {
        text = ""
    }
}
}