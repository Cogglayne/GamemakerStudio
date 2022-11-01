draw_self()
// draws text when the monster is close enough to the swimmer
if(instance_exists(obj_swimmer)){
if(point_distance(obj_swimmer.x,obj_swimmer.y,x,y) <= audioMaxDistanceToBeHeard){
text = "[Monster Roars]";
}else{
text = "";
}
if(!obj_swimmer.singleplayer){
text = ""
}
}

// centers text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_colour(x, y+60, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// displays a circle
/*
draw_set_color(c_lime)
draw_circle(x,y,audioMaxDistanceToBeHeard,true)

draw_set_color(c_purple)
draw_circle(x,y,audioStartsToDropAt,true)




