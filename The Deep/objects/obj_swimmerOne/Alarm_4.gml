// keeps track of how long the swimmer can avoid enemies
if (avoidanceTime) {
    avoidanceTimer++;
    if (avoidanceTimer > 5) {
        avoidanceTimer = 0;
        avoidanceTime = false;
    }
}
alarm[4] = 60;























