draw_self()
// centers and displays text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
// draws text if the swimmer is within a distance
showClosedCaptioning(yTextOffset,xTextOffset,text);
if (room != MultiplayerLevelFour && room != TutorialMonster && room != TutorialMovement && obj_options.options[13]) {
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