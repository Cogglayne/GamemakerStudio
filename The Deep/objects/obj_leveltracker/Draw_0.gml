if (obj_options.closedCaptioning) {
    // draws text describing the sound that indicates victory
    if (audio_is_playing(snd_playerWin)) {
        if (room == TutorialClear) {
            draw_text_transformed_colour(x + 2200, y + 800, "[Sound of Victory]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
        } else {
            draw_text_transformed_colour(x + 2200, y + 1000, "[Sound of Victory]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
        }
    }
    // draws text describing the sound that indicates defeat
    if (audio_is_playing(snd_playerdie) && textShouldBeShowing) {
        if (room == TutorialFailed) {
            draw_text_transformed_colour(x + 2200, y + 800, "[Sound of Defeat]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
        } else {
            draw_text_transformed_colour(x + 2200, y + 1000, "[Sound of Defeat]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
        }
    }
    // draw text describing the ambient background
    if (lifeTime != 0) {
        draw_text_transformed_colour(x + 1800, y - 150, "[Ominous Dark Ambient Music Plays]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
    }
}




















