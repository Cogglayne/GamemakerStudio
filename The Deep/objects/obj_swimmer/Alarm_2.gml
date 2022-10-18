// Keetps track of the time the swimmer is invulnerable after using an extra life 
// microtransaction
if(obj_microtransactions.extraLife){
	extraLifeTime--;
	if(extraLifeTime <= 0){
	obj_microtransactions.extraLife = false;
	extraLifeTime = 5;
	}
}
alarm[2] = 60;











