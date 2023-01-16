if (!obj_microtransactions.microtransactions[4] && !obj_swimmerOne.avoidanceTime && !tutorialEnemy) {
    obj_levelTracker.textShouldBeShowing = true;
    stopGameSounds()
	audio_play_sound(snd_playerdie, 1, 0)
    if (room == TutorialAngler) {
        room_goto(TutorialFailed)
    }
        if (obj_options.options[12]) {
			enemyLayerManipulation("Wait")
        } else {
			enemyLayerManipulation("Extra")
        }
}











