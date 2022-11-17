var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
var click = hover && mouse_check_button_pressed(mb_left);
hover = lerp(hover, hove, 0.1)
if (click) {
    url_open(url);
}










