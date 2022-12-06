if(obj_levelTracker.conflictResolutionAlternatives && (obj_disabilities.normal || obj_disabilities.poorReactivity) && !avoidanceTime && avoidanceCharges > 0){
avoidanceCharges--;
audio_play_sound(snd_avoidanceActivation,1,0)
avoidanceTime = true;
alarm[4] = 60;
}

































