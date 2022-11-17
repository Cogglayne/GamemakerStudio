obj_swimmer.numMonsterBarriers--;
audio_emitter_free(monsterBarrierEmmiter)
audio_stop_sound(snd_barrierCreation)
instance_create_layer(obj_swimmer.x, obj_swimmer.y - 150, "Instances", obj_barrierDestroyText)

























