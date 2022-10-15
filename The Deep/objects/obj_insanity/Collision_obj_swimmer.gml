audio_play_sound(snd_totem,1,0)
instance_create_layer(x,y,"Instances",obj_totemPickUpText)
obj_light.xBoundry -= .3;
obj_light.yBoundry -= .3;
obj_swimmer.mvspeed -= 3;
obj_swimmer.hardMode = true;
instance_destroy(self)
instance_destroy(obj_speedPickUp)
instance_destroy(obj_cursedSpeedPickUp)
instance_destroy(obj_visionPickUp)
instance_destroy(obj_cursedVisionPickUp)







