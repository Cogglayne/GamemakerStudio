// changes the color of a button depending on active variables
if (shouldBeYellow) {
	drawButton(#aa8800, #beaa2a, c_purple, c_purple)
} else if (error) {
	drawButton(c_maroon, c_red, c_maroon, c_black)
} else if (activated) {
	drawButton(c_white, c_ltgray, c_white, c_black)
} else if (bought){
	drawButton(c_white, c_white, c_white, c_black)
} else {
	drawButton(c_ltgray, c_white, c_ltgray, c_black)
}