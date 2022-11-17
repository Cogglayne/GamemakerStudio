if (place_meeting(x, y, obj_whiteRed_pink)) {
    obj_pollutantPuzzleTracker.whiteRedSolved = true;
} else {
    obj_pollutantPuzzleTracker.whiteRedSolved = false;
}
if (position_meeting(mouse_x, mouse_y, self) && obj_disabilities.blindMode) {
    if (!audio_is_playing(snd_pink) && !soundHasBeenPlayed) {
        audio_play_sound(snd_pink, 1, 0)
        soundHasBeenPlayed = true;
    }
} else {
    soundHasBeenPlayed = false;
}
if (!instance_exists(obj_whiteRed_pink)) {
    obj_pollutantPuzzleTracker.whiteRedSolved = true;
}



















