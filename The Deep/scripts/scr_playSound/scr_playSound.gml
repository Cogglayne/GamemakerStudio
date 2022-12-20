function playSound(sound) {
    if (obj_options.textToSpeak && soundShouldBePlaying) {
        audio_play_sound(sound, 1, 0)
    }
}