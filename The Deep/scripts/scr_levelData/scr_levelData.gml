function setLevelData() {
    tutorial();
    levelFourEasy();
    levelFourMedium();
    levelFourHard();
}

function tutorial() {
    if (room == Tutorial) {
        if (obj_swimmer.timer < obj_levelTracker.tutorialTime) {
            obj_levelTracker.tutorialTime = obj_swimmer.timer;
        }
        if (obj_swimmer.hardMode == true) {
            obj_levelTracker.tutorialChallengeModeClear = true;
        }
    }
}

function levelFour() {
    if (obj_levelTracker.levelFourEasyChallengeModeClear && obj_levelTracker.levelFourMediumChallengeModeClear && obj_levelTracker.levelFourHardChallengeModeClear) {
        obj_levelTracker.levelFourChallengeModeClear = true;
    }
}

function levelFourEasy() {
    if (room == LevelFourEasy) {
        if (obj_swimmer.timer < obj_levelTracker.levelFourEasyTime) {
            obj_levelTracker.levelFourEasyTime = obj_swimmer.timer;
        }
        if (obj_swimmer.hardMode == true) {
            obj_levelTracker.levelFourEasyChallengeModeClear = true;
        }
    }
}

function levelFourMedium() {
    if (room == LevelFourMedium) {
        if (obj_swimmer.timer < obj_levelTracker.levelFourMediumTime) {
            obj_levelTracker.levelFourMediumTime = obj_swimmer.timer;
        }
        if (obj_swimmer.hardMode == true) {
            obj_levelTracker.levelFourMediumChallengeModeClear = true;
        }
    }
}

function levelFourHard() {
    if (room == LevelFourHard) {
        if (obj_swimmer.timer < obj_levelTracker.levelFourHardTime) {
            obj_levelTracker.levelFourHardTime = obj_swimmer.timer;
        }
        if (obj_swimmer.hardMode == true) {
            obj_levelTracker.levelFourHardChallengeModeClear = true;
        }
    }
}