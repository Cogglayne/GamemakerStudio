if (place_meeting(x, y, obj_brownWhite_beige)) {
    obj_pollutantPuzzleTracker.brownWhiteSolved = true;
} else {
    obj_pollutantPuzzleTracker.brownWhiteSolved = false;
}
if (position_meeting(mouse_x, mouse_y, self) && obj_disabilities.blindMode) {
    if (!audio_is_playing(snd_beige) && !soundHasBeenPlayed) {
        audio_play_sound(snd_beige, 1, 0)
        soundHasBeenPlayed = true;
    }
} else {
    soundHasBeenPlayed = false;
}
if (!instance_exists(obj_brownWhite_beige)) {
    obj_pollutantPuzzleTracker.brownWhiteSolved = true;
}
















