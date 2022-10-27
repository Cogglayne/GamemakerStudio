if(room == Levels){
instance_destroy(obj_trainerLight)
instance_destroy()
}
if(!instance_exists(obj_trainerLight)){
instance_create_layer(x,y,"Instances", obj_trainerLight);
}

























