if(obj_options.monsterAvoidanceAbility && obj_options.arrowKeyControls && !avoidanceTime && avoidanceCharges > 0){
avoidanceCharges--;
audio_play_sound(snd_avoidanceActivation,1,0)
avoidanceTime = true;
alarm[4] = 60;
}


































