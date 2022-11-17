// keeps player in wait room until countdown is done
time -= 1;
if (time <= 0) {
    instance_destroy();
    obj_microtransactions.extraLife = true;
}
alarm[0] = 60;





























