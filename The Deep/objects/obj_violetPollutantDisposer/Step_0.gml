if (place_meeting(x, y, obj_redBlue_violet)) {
    obj_pollutantPuzzleTracker.redBlueSolved = true;
} else {
    obj_pollutantPuzzleTracker.redBlueSolved = false;
}
if (position_meeting(mouse_x, mouse_y, self) && obj_disabilities.blindMode) {
    if (!audio_is_playing(snd_violet) && !soundHasBeenPlayed) {
        audio_play_sound(snd_violet, 1, 0)
        soundHasBeenPlayed = true;
    }
} else {
    soundHasBeenPlayed = false;
}
if (!instance_exists(obj_redBlue_violet)) {
    obj_pollutantPuzzleTracker.redBlueSolved = true;
}
















