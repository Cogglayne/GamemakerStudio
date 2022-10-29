if(shouldBeYellow == true){
draw_roundrect_color(x,y,x+width,y+height,(merge_color(#aa8800,#beaa2a,hover)),c_purple,0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_colour(x+width/2,y+height/2, text, c_purple, c_purple, c_purple, c_purple, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}else if (error == true){
draw_set_color(merge_color(c_maroon,c_red,hover));
draw_roundrect(x,y,x+width,y+height,0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2,y+height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}else if (activated == true){
draw_set_color(merge_color(c_green,c_green,hover));
draw_roundrect(x,y,x+width,y+height,0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2,y+height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}else{
draw_set_color(merge_color(c_ltgray,c_white,hover));
draw_roundrect(x,y,x+width,y+height,0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2,y+height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}
