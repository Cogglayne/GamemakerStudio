if(obj_options.conflictResolutionAlternatives && obj_options.rightHandControls && !avoidanceTime && avoidanceCharges > 0){
avoidanceCharges--;
audio_play_sound(snd_avoidanceActivation,1,0)
avoidanceTime = true;
alarm[4] = 60;
}


































