// sets level data
levelFour()
if (instance_exists(obj_swimmer)) {
    if (obj_swimmer.timer < timer) {
        timer = obj_swimmer.timer;
    }
}
// resets fish visibility
leftFishFound = false;
rightFishFound = false;
// saves game variables
save();













