// button size
width = 1000;
height = 200;
// button text
text = "";  
// button coloring
hover = 0;
color = draw_set_color(merge_color(#ffd700,#ffe302,hover));
shouldBeYellow = false;
error = false;
soundHasBeenPlayed = false;
activated = false;
bought = false;
// variables unique to each button
var targetRoom;
var soundToPlay;
