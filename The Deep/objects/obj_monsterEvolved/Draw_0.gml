draw_self()
// draws text if the swimmer is within a distance
if (instance_exists(obj_swimmer)) {
    if (point_distance(obj_swimmer.x, obj_swimmer.y, x, y) <= audioMaxDistanceToBeHeard) {
        text = "[Evolved Monster Bellows]";
    } else {
        text = "";
    }
    if (!obj_swimmer.singleplayer) {
        text = ""
    }
}
// centers and displays text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (room != MultiplayerLevelFour && room != TutorialMonster && room != TutorialMovement && obj_levelTracker.variableObjectives) {
    draw_text_transformed_colour(x, y - 175, numHits, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
}
if (image_xscale == 1) {
    draw_text_transformed_colour(x + 50, y + 175, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
} else if (image_xscale == -1) {
    draw_text_transformed_colour(x - 50, y + 175, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);