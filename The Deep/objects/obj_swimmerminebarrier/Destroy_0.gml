obj_swimmer.numMineBarriers--;
audio_emitter_free(mineBarrierEmmiter)
audio_stop_sound(snd_barrierCreation)
instance_create_layer(obj_swimmer.x, obj_swimmer.y - 150, "Instances", obj_barrierDestroyText)
























