if (place_meeting(x, y, obj_orangeBlue_brown)) {
    obj_pollutantPuzzleTracker.orangeBlueSolved = true;
} else {
    obj_pollutantPuzzleTracker.orangeBlueSolved = false;
}
if (position_meeting(mouse_x, mouse_y, self) && obj_disabilities.blindMode) {
    if (!audio_is_playing(snd_brown) && !soundHasBeenPlayed) {
        audio_play_sound(snd_brown, 1, 0)
        soundHasBeenPlayed = true;
    }
} else {
    soundHasBeenPlayed = false;
}
if (!instance_exists(obj_orangeBlue_brown)) {
    obj_pollutantPuzzleTracker.orangeBlueSolved = true;
}
















