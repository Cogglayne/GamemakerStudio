function changeActivated() {
    if (activated == false) {
        activated = true;
    } else if (activated == true) {
        activated = false;
    }
}

function activateExtraLifeOrSkipWaitTime(microtransaction) {
    obj_microtransactions.extraLife = true;
    obj_levelTracker.textShouldBeShowing = false;
    instance_activate_layer("AmbientBackground")
    instance_activate_layer("Instances")
    instance_activate_layer("LightInstance")
    if (microtransaction == "Extra") {
        instance_deactivate_layer("Extra")
    } else if (microtransaction == "Skip") {
        instance_destroy(obj_wait)
        instance_deactivate_layer("Wait")
    }
}

function setTutorialRoom(nextRoom) {
    obj_levelTracker.tutorialRoom = nextRoom;
    room_goto(nextRoom)
}

function setDifficulty(difficulty) {
    obj_levelTracker.levelDifficulty = difficulty
    room_goto(targetRoom);
}