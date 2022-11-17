draw_self()
if (instance_exists(obj_swimmer)) {
    if (point_distance(obj_swimmer.x, obj_swimmer.y, x, y) <= audioMaxDistanceToBeHeard) {
        text = "[Pollutant Destroying the Ocean]";
    } else {
        text = "";
    }
} else {
    text = "White and Black"
}
if (room == MultiplayerTutorial) {
    text = "Swimmer Left Pollutant"
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_colour(x, y + 60, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (dragged) {
    draw_set_color(#FFFFFF)
    draw_circle(x, y, 8, false)
}




