// draws pollutant sprites depending on how many pollutants are left
function drawLives(){
switch(numPollutants){
		case 1:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		break;
		case 2:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		break;
		case 3:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		break;
		case 4:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+100);
		break;
		case 5:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+150);
		break;
		case 6:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+150);
		break;
		case 7:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+150);
		break;
		case 8:
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+100);
		draw_sprite(spr_whiteBlack_grey, 0, x-30, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x-10, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x+10, y+150);
		draw_sprite(spr_whiteBlack_grey, 0, x+30, y+150);
		break;
	}
}
// draws a circle incrementally
function drawPie(x ,y ,value, max, colour, radius, transparency){
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
     
    if (value > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(colour);
        draw_set_alpha(transparency);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x, y);
        
        for(i=0; i<=value; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(radius, len);
            ty = lengthdir_y(radius, len);
            draw_vertex(x+tx, y+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}
}

   