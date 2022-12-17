draw_self()
// centers and displays text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
// draws text if the swimmer is within a distance
if (instance_exists(obj_swimmer)) {
    if (point_distance(obj_swimmer.x, obj_swimmer.y, x, y) <= audioMaxDistanceToBeHeard && point_distance(obj_swimmer.x, obj_swimmer.y, x, y) >= audioMaxDistanceToBeHeard - 300) {
        if (obj_disabilities.closedCaptioning) {
            if (image_xscale == 1) {
                draw_text_transformed_colour(x + xTextOffset, y + yTextOffset, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
            } else if (image_xscale == -1) {
                draw_text_transformed_colour(x - xTextOffset, y + yTextOffset, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
            }
        }
    }
    if (!obj_swimmer.singleplayer) {
        text = ""
    }
}
if (room != MultiplayerLevelFour && room != TutorialMonster && room != TutorialMovement && obj_levelTracker.variableObjectives) {
    draw_text_transformed_colour(x, y - yTextOffset, numHits, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// displays a circle
/*
draw_set_color(c_lime)
draw_circle(x,y,audioMaxDistanceToBeHeard,true)

draw_set_color(c_purple)
draw_circle(x,y,audioStartsToDropAt,true)