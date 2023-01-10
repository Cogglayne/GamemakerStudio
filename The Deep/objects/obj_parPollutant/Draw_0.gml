draw_self()
// centers and displays text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
showClosedCaptioning(60,0, text)
if (room == MultiplayerTutorial) {
    draw_text_transformed_colour(x, y + 60, tutorialText, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);



