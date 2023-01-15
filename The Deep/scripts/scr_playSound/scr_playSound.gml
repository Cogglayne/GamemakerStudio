function playSound(sound) {
    if (obj_options.options[4] && soundShouldBePlaying) {
        audio_play_sound(sound, 1, 0)
    }
}