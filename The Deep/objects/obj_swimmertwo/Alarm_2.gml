// Keetps track of the time the swimmer is invulnerable after using an extra life 
// microtransaction
if (obj_microtransactions.extraLife2) {
    extraLifeTime--;
    if (extraLifeTime <= 0) {
        obj_microtransactions.extraLife2 = false;
        extraLifeTime = 5;
    }
}
alarm[2] = 60;









