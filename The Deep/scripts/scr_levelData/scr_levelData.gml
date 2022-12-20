function setLevelData() {
    levelFourEasy();
    levelFourMedium();
    levelFourHard();
}

function levelFour() {
    if (obj_levelTracker.levelFourEasyChallengeModeClear && obj_levelTracker.levelFourMediumChallengeModeClear && obj_levelTracker.levelFourHardChallengeModeClear) {
        obj_levelTracker.levelFourChallengeModeClear = true;
    }
}

function levelFourEasy() {
    if (room == LevelFourEasy) {
        if (obj_levelTracker.timer < obj_levelTracker.levelFourEasyTime) {
            obj_levelTracker.levelFourEasyTime = obj_levelTracker.timer;
        }
        if (obj_swimmerOne.hardMode == true) {
            obj_levelTracker.levelFourEasyChallengeModeClear = true;
        }
    }
}

function levelFourMedium() {
    if (room == LevelFourMedium) {
        if (obj_levelTracker.timer < obj_levelTracker.levelFourMediumTime) {
            obj_levelTracker.levelFourMediumTime = obj_levelTracker.timer;
        }
        if (obj_swimmerOne.hardMode == true) {
            obj_levelTracker.levelFourMediumChallengeModeClear = true;
        }
    }
}

function levelFourHard() {
    if (room == LevelFourHard) {
        if (obj_levelTracker.timer < obj_levelTracker.levelFourHardTime) {
            obj_levelTracker.levelFourHardTime = obj_levelTracker.timer;
        }
        if (obj_swimmerOne.hardMode == true) {
            obj_levelTracker.levelFourHardChallengeModeClear = true;
        }
    }
}