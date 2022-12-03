function playerOneMovement() {
    keyUp = keyboard_check(ord("W"));
    keyDown = keyboard_check(ord("S"));
    keyLeft = keyboard_check(ord("A"));
    keyRight = keyboard_check(ord("D"));
}

function playerTwoMovement() {
    keyUp = keyboard_check(vk_up);
    keyDown = keyboard_check(vk_down);
    keyLeft = keyboard_check(vk_left);
    keyRight = keyboard_check(vk_right);
	show_debug_message(string(keyLeft))
}