if(obj_options.monsterAvoidanceAbility && (obj_options.mouseAndArrowKeyControls || obj_options.decreaseReactionTimeRequired) && !avoidanceTime && avoidanceCharges > 0){
avoidanceCharges--;
audio_play_sound(snd_monsterAvoidanceAbilityActivation,1,0)
avoidanceTime = true;
alarm[4] = 60;
}

































