audio_play_sound(snd_totem,1,0)
obj_lightPlayerTwo.xBoundry -= .4;
obj_lightPlayerTwo.yBoundry -= .4;
obj_swimmerTwo.mvspeed += 4;
instance_destroy(self)
instance_destroy(obj_speedPickUp2)
instance_destroy(obj_cursedVisionPickUp2)
instance_destroy(obj_visionPickUp2)
instance_destroy(obj_insanity)
