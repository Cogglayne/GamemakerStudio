if (!obj_options.removeBackgroundNoise) {
    audio_play_sound(snd_background, 0, 1);
}
audio_falloff_set_model(audio_falloff_linear_distance)