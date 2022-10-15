if(audio_is_playing(snd_playerWin)){
draw_text_transformed_colour(x+2200, y+1000, "[Sound of Victory]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
}
if(audio_is_playing(snd_playerdie) && textShouldBeShowing){
draw_text_transformed_colour(x+2200, y+1000, "[Sound of Defeat]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
}

if(lifeTime!=0){
draw_text_transformed_colour(x+1800, y-150, "[Ominous Dark Ambient Music Plays]", 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
}

























