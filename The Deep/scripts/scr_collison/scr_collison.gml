function swimmerCollisions(object) {
    if place_meeting(x + hsp, y, object) {
        xCollision = true
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = 0;
    } else {
        xCollision = false;
    }
    if place_meeting(x, y + vsp, object) {
        yCollision = true
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        vsp = 0;
    } else {
        yCollision = false;
    }
    if ((xCollision == true || yCollision == true) && obj_options.textToSpeak) {
        if (!audio_is_playing(snd_wall)) {
            audio_play_sound(snd_wall, 1, 0);
        }
    } else {
        audio_stop_sound(snd_wall)
    }
}

// wall collisions
function mineTutorialCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
		tutorialCollision(2,
		"Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the mine up",
		snd_mineTutorialMistake,
		snd_mineUp)
        vsp = -vsp;
    }
}

function mineCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
		tutorialCollision(2,
		"Make sure you deploy the barrier in the mine's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the mine down",
		snd_mineTutorialMistake,
		snd_mineDown)
        vsp = -vsp;
    }
}

function monsterTutorialCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
		tutorialCollision(4,
		"Make sure you deploy the barrier in the monster's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the monster to the right",
		snd_monsterTutorialMistake,
		snd_monsterRight)
        image_xscale = -image_xscale;
    }
}

function monsterCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
		tutorialCollision(4,
		"Make sure you deploy the barrier in the monster's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the monster to the left",
		snd_monsterTutorialMistake,
		snd_monsterLeft)
        image_xscale = -image_xscale;
    }
}

function tutorialMonsterEvolvedCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
		trainerTutorialNumber = 0;
		if(room == TutorialMonsterEvolvedOne){
			trainerTutorialNumber = 6;
		} else if (room == TutorialMonsterEvolvedTwo){
			trainerTutorialNumber = 8;
		}
		tutorialCollision(trainerTutorialNumber,
		"Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the evolved monster right and down",
		snd_evolvedMonsterTutorialMistake,
		snd_monsterEvolvedCollision)
        hsp = -hsp;
        vsp = -vsp;
        image_xscale = -image_xscale;
    }
}

function monsterEvolvedCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
		trainerTutorialNumber = 0;
		if(room == TutorialMonsterEvolvedOne){
			trainerTutorialNumber = 6;
		} else if (room == TutorialMonsterEvolvedTwo){
			trainerTutorialNumber = 8;
		}
		tutorialCollision(trainerTutorialNumber,
		"Make sure you deploy the barrier in the evolved monster's path\n out in the field you can only deploy one at a time\n try again",
		"Deploy the barrier to redirect the evolved monster left and up",
		snd_evolvedMonsterTutorialMistake,
		snd_monsterEvolvedTutorialCollision)
        hsp = -hsp;
        vsp = -vsp;
        image_xscale = -image_xscale;
    }
}

// barrier collisions
function swimmerMonsterBarrierCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        if (obj_options.destroyEnemiesWithBarriers && obj_swimmerOne.isPlaying) {
            numHits--;
        }
        image_xscale = -image_xscale;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
		changeTutorialStatus(4,5,1,"Excellent Work, This time the danger is real",snd_enemyActive,2)
    }
}

function swimmerMineBarrierCollision(object) {
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) {
            y += sign(vsp);
        }
        if (obj_options.destroyEnemiesWithBarriers && obj_parSwimmer.isPlaying) {
            numHits--;
        }
		changeTutorialStatus(2,3,2,"Excellent Work, This time the danger is real",snd_enemyActive,2)
        vsp = -vsp;
        instance_destroy(object)
        audio_play_sound(snd_barrierDestruction, 1, 0)
    }
}

function monsterEvolvedBarrierCollision(object) {
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) {
            x += sign(hsp);
        }
        hsp = -hsp;
        vsp = -vsp;
        if (obj_options.destroyEnemiesWithBarriers && obj_parSwimmer.isPlaying) {
            numHits--;
        }
        if (object == obj_swimmerOneMineBarrier) {
			changeTutorialStatus(6,7,3,"Excellent Work, This time the danger is real",snd_enemyActive,2)
        }
        if (object == obj_swimmerOneMonsterBarrier) {
			changeTutorialStatus(8,9,4,"Excellent Work, This time the danger is real",snd_enemyActive,2)
        }
            instance_destroy(object)
            audio_play_sound(snd_barrierDestruction, 1, 0)		
        image_xscale = -image_xscale;
    }
}
