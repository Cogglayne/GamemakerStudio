draw_set_halign(fa_center)
draw_set_valign(fa_middle)
// draws text for the swimmer
if (obj_disabilities.dyscalculia) {
    drawLives()
} else if (!obj_disabilities.dyscalculia) {
    if (room != TutorialAngler && room != TutorialMine && room != TutorialMonster && room != TutorialProbe && room != TutorialMonsterEvolvedOne && room != TutorialMonsterEvolvedTwo && room != TutorialMovement) {
        draw_text_transformed_colour(x, y + 120, string(numPollutants), .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
    }
}
if (singleplayer) {
    if (obj_disabilities.ADHD) {
        text = "Collect the pollutants"
    } else if (!obj_disabilities.ADHD) {
        text = ""
    }
    //drawPie(x ,y-100 ,timer, 100, c_white, 20, 1)
    if (room == TutorialAngler || room == TutorialMine || room == TutorialMonster || room == TutorialProbe || room == TutorialMonsterEvolvedOne || room == TutorialMonsterEvolvedTwo || room == TutorialMovement) {
        draw_text_transformed_colour(x, y - 200, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
    }
    if (room != TutorialAngler && room != TutorialMine && room != TutorialMonster && room != TutorialProbe && room != TutorialMonsterEvolvedOne && room != TutorialMonsterEvolvedTwo && room != TutorialMovement) {
		drawCircularBar(x, y - 110, avoidanceTimer, 5, #FBFFFF, 50, 1, 12)
		drawBarriers()
     if(obj_levelTracker.conflictResolutionAlternatives){
		 	 drawAvoidanceCharges()
	 }		
		draw_text_transformed_colour(x, y - 100, string(timer), .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
        draw_text_transformed_colour(x, y - 200, text, .5, .5, image_angle, c_red, c_red, c_red, c_red, 2);
    }
} else {
    draw_text_transformed_colour(x, y - 200, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
}

draw_self();
// draws the swimmers depending on the swimmer's state and direction
switch (currentState) {
    case IDOL:
        if (swimmerSkin) {
            if (sprite_index == spr_blackswimmerSwimmingLeft || sprite_index == spr_blackswimmerSwimmingDownLeft || sprite_index == spr_blackswimmerSwimmingUpLeft) {
                sprite_index = spr_blackswimmerIdleLeft;
            }
            if (sprite_index == spr_blackswimmerSwimmingRight || sprite_index == spr_blackswimmerSwimmingDownRight || sprite_index == spr_blackswimmerSwimmingUpRight) {
                sprite_index = spr_blackswimmerIdleRight;
            }
        } else {
            if (sprite_index == spr_swimmerSwimmingLeft || sprite_index == spr_swimmerSwimmingDownLeft || sprite_index == spr_swimmerSwimmingUpLeft) {
                sprite_index = spr_swimmerIdleLeft;
            }
            if (sprite_index == spr_swimmerSwimmingRight || sprite_index == spr_swimmerSwimmingDownRight || sprite_index == spr_swimmerSwimmingUpRight) {
                sprite_index = spr_swimmerIdleRight;
            }
        }
        break;
    case MOVING:
        if (swimmerSkin) {
            if (hsp < 0) {
                mask_index = spr_blackswimmerIdleRight;
                sprite_index = spr_blackswimmerSwimmingLeft;
            }
            if (hsp > 0) {
                mask_index = spr_blackswimmerIdleRight;
                sprite_index = spr_blackswimmerSwimmingRight;
            }
            if (vsp > 0 && hsp == 0) {
                mask_index = spr_blackswimmerIdleRight;
                if (sprite_index == spr_blackswimmerSwimmingLeft || sprite_index == spr_blackswimmerIdleLeft || sprite_index == spr_blackswimmerSwimmingUpLeft) {
                    sprite_index = spr_blackswimmerSwimmingDownLeft;
                }
                if (sprite_index == spr_blackswimmerSwimmingRight || sprite_index == spr_blackswimmerIdleRight || sprite_index == spr_blackswimmerSwimmingUpRight) {
                    sprite_index = spr_blackswimmerSwimmingDownRight
                }
            }
            if (vsp < 0 && hsp == 0) {
                mask_index = spr_blackswimmerIdleRight;
                if (sprite_index == spr_blackswimmerSwimmingLeft || sprite_index == spr_blackswimmerIdleLeft || sprite_index == spr_blackswimmerSwimmingDownLeft) {
                    sprite_index = spr_blackswimmerSwimmingUpLeft;
                }
                if (sprite_index == spr_blackswimmerSwimmingRight || sprite_index == spr_blackswimmerIdleRight || sprite_index == spr_blackswimmerSwimmingDownRight) {
                    sprite_index = spr_blackswimmerSwimmingUpRight
                }
            }
        } else {
            if (hsp < 0) {
                mask_index = spr_swimmerIdleRight;
                sprite_index = spr_swimmerSwimmingLeft;
            }
            if (hsp > 0) {
                mask_index = spr_swimmerIdleRight;
                sprite_index = spr_swimmerSwimmingRight;
            }
            if (vsp > 0 && hsp == 0) {
                mask_index = spr_swimmerIdleRight;
                if (sprite_index == spr_swimmerSwimmingLeft || sprite_index == spr_swimmerIdleLeft || sprite_index == spr_swimmerSwimmingUpLeft) {
                    sprite_index = spr_swimmerSwimmingDownLeft;
                }
                if (sprite_index == spr_swimmerSwimmingRight || sprite_index == spr_swimmerIdleRight || sprite_index == spr_swimmerSwimmingUpRight) {
                    sprite_index = spr_swimmerSwimmingDownRight
                }
            }
            if (vsp < 0 && hsp == 0) {
                mask_index = spr_swimmerIdleRight;
                if (sprite_index == spr_swimmerSwimmingLeft || sprite_index == spr_swimmerIdleLeft || sprite_index == spr_swimmerSwimmingDownLeft) {
                    sprite_index = spr_swimmerSwimmingUpLeft;
                }
                if (sprite_index == spr_swimmerSwimmingRight || sprite_index == spr_swimmerIdleRight || sprite_index == spr_swimmerSwimmingDownRight) {
                    sprite_index = spr_swimmerSwimmingUpRight
                }
            }
            break;
        }
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
