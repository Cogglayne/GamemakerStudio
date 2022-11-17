if (surface_exists(surface)) {
    surface_set_target(surface);
    draw_clear(c_black)
    with(obj_trainerLight) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_light) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_lightPlayerTwo) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_anglerLight) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_anglerTutorialLight) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_probeLight) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    with(obj_stationaryProbeLight) {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_black, 1);
        if (obj_microtransactions.newLightEffect) {
            gpu_set_blendmode(bm_zero)
            draw_sprite_ext(spr_light, 0, x, y, xBoundry, yBoundry, 0, c_orange, 0.7);
        }
        gpu_set_blendmode(bm_normal)
    }
    surface_reset_target()
    draw_surface_ext(surface, 0, 0, 1, 1, 0, c_white, 1)
} else {
    surface = surface_create(room_width, room_height)
}
