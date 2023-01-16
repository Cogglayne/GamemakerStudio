// Keeps track of how long the timer should be delayed for if the delay timer
// microtransaction is used
if (obj_microtransactions.microtransactions[6]) {
    delayTime--;
    if (delayTime <= 0) {
        obj_microtransactions.microtransactions[6] = false;
        delayTime = 5;
    }
}
alarm[1] = 60;











