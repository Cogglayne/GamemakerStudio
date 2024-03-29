// shows the player if they have a barrier available to use
function drawBarriers() {
    if (obj_options.options[13]) {
        if (numMineBarriers == 0 && numMonsterBarriers == 0) {
            draw_sprite_ext(spr_swimmerMineBarrierDestroy, image_index, x, y + 70, .7, .7, image_angle, image_blend, image_alpha);
            draw_sprite_ext(spr_swimmerMonsterBarrierDestroy, image_index, x - 50, y + 120, .7, .7, image_angle, image_blend, image_alpha);
        } else if (numMineBarriers == 0 && numMonsterBarriers == 1) {
            draw_sprite_ext(spr_swimmerMineBarrierDestroy, image_index, x, y + 70, .7, .7, image_angle, image_blend, image_alpha);
        } else if (numMineBarriers == 1 && numMonsterBarriers == 0) {
            draw_sprite_ext(spr_swimmerMonsterBarrierDestroy, image_index, x - 50, y + 120, .7, .7, image_angle, image_blend, image_alpha);
        }
    } else {
        if (numMineBarriers == 0 && numMonsterBarriers == 0) {
            draw_sprite_ext(spr_swimmerMineBarrier, image_index, x, y + 70, .7, .7, image_angle, image_blend, image_alpha);
            draw_sprite_ext(spr_swimmerMonsterBarrier, image_index, x - 50, y + 120, .7, .7, image_angle, image_blend, image_alpha);
        } else if (numMineBarriers == 0 && numMonsterBarriers == 1) {
            draw_sprite_ext(spr_swimmerMineBarrier, image_index, x, y + 70, .7, .7, image_angle, image_blend, image_alpha);
        } else if (numMineBarriers == 1 && numMonsterBarriers == 0) {
            draw_sprite_ext(spr_swimmerMonsterBarrier, image_index, x - 50, y + 120, .7, .7, image_angle, image_blend, image_alpha);
        }
    }
}
// draws avoidance sprites
function drawAvoidanceCharges() {
    switch (avoidanceCharges) {
        case 1:
            draw_sprite(spr_avoidance, 0, x - 80, y - 20);
            break;
        case 2:
            draw_sprite(spr_avoidance, 0, x - 80, y - 20);
            draw_sprite(spr_avoidance, 0, x - 80, y + 20);
            break;
        case 3:
            draw_sprite(spr_avoidance, 0, x - 80, y - 20);
            draw_sprite(spr_avoidance, 0, x - 80, y + 20);
            draw_sprite(spr_avoidance, 0, x + 60, y - 20);
            break;
        case 4:
            draw_sprite(spr_avoidance, 0, x - 80, y - 20);
            draw_sprite(spr_avoidance, 0, x - 80, y + 20);
            draw_sprite(spr_avoidance, 0, x + 60, y - 20);
            draw_sprite(spr_avoidance, 0, x + 60, y + 20);
            break;
    }
}
// draws pollutant sprites depending on how many pollutants are left
function drawLives() {
    switch (numPollutants) {
        case 1:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            break;
        case 2:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            break;
        case 3:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            break;
        case 4:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 100);
            break;
        case 5:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 150);
            break;
        case 6:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 150);
            break;
        case 7:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 150);
            break;
        case 8:
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 100);
            draw_sprite(spr_whiteBlack_grey, 0, x - 30, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x - 10, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x + 10, y + 150);
            draw_sprite(spr_whiteBlack_grey, 0, x + 30, y + 150);
            break;
    }
}
// draws a full circle incrementally
function drawPie(x, y, value, max, colour, radius, transparency) {
    if (value > 0) { // no point even running if there is nothing to display (also stops /0
        var i, len, tx, ty;

        var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
        var sizeofsection = 360 / numberofsections

        if (value > 1) { // HTML5 version doesnt like triangle with only 2 sides 

            draw_set_colour(colour);
            draw_set_alpha(transparency);

            draw_primitive_begin(pr_trianglefan);
            draw_vertex(x, y);

            for (i = 0; i <= value; i++) {
                len = (i * sizeofsection) + 90; // the 90 here is the starting angle
                tx = lengthdir_x(radius, len);
                ty = lengthdir_y(radius, len);
                draw_vertex(x + tx, y + ty);
            }
            draw_primitive_end();

        }
        draw_set_alpha(1);
    }
}
// draws a hollow circle incrementally
function drawCircularBar(x, y, value, max, colour, radius, transparency, width) {

    if (value > 0) { // no point even running if there is nothing to display (also stops /0
        var i, len, tx, ty, val;

        var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
        var sizeofsection = 360 / numberofsections

        val = (value / max) * numberofsections

        if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 

            piesurface = surface_create(radius * 2, radius * 2)

            draw_set_colour(colour);
            draw_set_alpha(transparency);

            surface_set_target(piesurface)

            draw_clear_alpha(c_blue, 0.7)
            draw_clear_alpha(c_black, 0)

            draw_primitive_begin(pr_trianglefan);
            draw_vertex(radius, radius);

            for (i = 0; i <= val; i++) {
                len = (i * sizeofsection) + 90; // the 90 here is the starting angle
                tx = lengthdir_x(radius, len);
                ty = lengthdir_y(radius, len);
                draw_vertex(radius + tx, radius + ty);
            }

            draw_primitive_end();

            draw_set_alpha(1);

            gpu_set_blendmode(bm_subtract)
            draw_set_colour(c_black)
            draw_circle(radius - 1, radius - 1, radius - width, false)
            gpu_set_blendmode(bm_normal)

            surface_reset_target()

            draw_surface(piesurface, x - radius, y - radius)

            surface_free(piesurface)

        }

    }
}

function drawButton(col1, col2, col3, col4) {
    draw_roundrect_color(x, y, x + width, y + height, (merge_color(col1, col2, hover)), col3, 0);
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_colour(x + width / 2, y + height / 2, text, col4, col4, col4, col4, 1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}