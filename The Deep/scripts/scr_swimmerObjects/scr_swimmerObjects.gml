function toggleLight() {
    audio_play_sound(snd_lightToggle, 1, 0)
    if (instance_exists(obj_playerOneLight)) {
        instance_destroy(obj_playerOneLight)
    } else {
        // angler tutorial
        if (instance_exists(obj_trainer)) {
            if (obj_trainer.anglerTutorialTrial) {
                obj_trainer.numHits++;
                if (obj_trainer.anglerTutorialTrial && obj_trainer.numHits == 1) {
                    if (obj_options.textToSpeak) {
                        stopTrainerSounds();
                        audio_play_sound(snd_anglerActivated, 1, 0)
                    }
                    obj_trainer.textTwo = "Excellent Work, This time the danger is real\n make sure to swim away from the angler when your light is off"
                    obj_horrorTutorial.tutorialEnemy = false;
                }
                if (obj_trainer.anglerTutorialTrial && obj_trainer.numHits == 2) {
                    stopGameSounds()
                    obj_levelTracker.anglerTutorialCleared = true
                    instance_destroy(obj_horrorTutorial)
                    obj_trainer.numHits = 0;
					audio_play_sound(snd_playerWin,1,0)
                    room_goto(TutorialClear)
                }
            }
        }
        instance_create_layer(obj_swimmerOne.x, obj_swimmerOne.y, "Instances", obj_playerOneLight);
        obj_playerOneLight.xBoundry = obj_levelTracker.lightX;
        obj_playerOneLight.yBoundry = obj_levelTracker.lightY;
    }
}

function useAvoidanceAbility() {
    avoidanceCharges--;
    audio_play_sound(snd_monsterAvoidanceAbilityActivation, 1, 0)
    avoidanceTime = true;
    alarm[4] = 60;
}

function setProbeDirection() {
    if (obj_swimmerOne.vsp == 0 && obj_swimmerOne.hsp == 0 && (obj_swimmerOne.sprite_index == spr_swimmerIdleLeft || obj_swimmerOne.sprite_index == spr_blackswimmerIdleLeft)) {
        // left
        direction = 180;
    } else if (obj_swimmerOne.vsp == 0 && obj_swimmerOne.hsp == 0 && (obj_swimmerOne.sprite_index == spr_swimmerIdleRight || obj_swimmerOne.sprite_index == spr_blackswimmerIdleRight)) {
        //right
        direction = 0;
    } else if (obj_swimmerOne.vsp < 0 && obj_swimmerOne.hsp < 0) {
        // up and left
        direction = 135;
    } else if (obj_swimmerOne.vsp < 0 && obj_swimmerOne.hsp > 0) {
        // up and right
        direction = 45;
    } else if (obj_swimmerOne.vsp > 0 && obj_swimmerOne.hsp < 0) {
        // down and left
        direction = 225;
    } else if (obj_swimmerOne.vsp > 0 && obj_swimmerOne.hsp > 0) {
        // down and right
        direction = 315;
    } else if (obj_swimmerOne.vsp == 0 && obj_swimmerOne.hsp > 0) {
        // right
        direction = 0;
    } else if (obj_swimmerOne.vsp == 0 && obj_swimmerOne.hsp < 0) {
        // left
        direction = 180;
    } else if (obj_swimmerOne.vsp < 0 && obj_swimmerOne.hsp == 0) {
        // up
        direction = 90;
    } else if (obj_swimmerOne.vsp > 0 && obj_swimmerOne.hsp == 0) {
        // down
        direction = 270;
    }
}

function arrowAndWASDBarrierCreation() {
    if ((keyboard_check_released(ord("A")) && obj_options.WASDControls) || (keyboard_check_released(vk_left) && obj_options.arrowKeyControls)) {
        leftArrowDoubleClick = 1;
        rightArrowDoubleClick = 0;
        downArrowDoubleClick = 0;
        UpArrowDoubleClick = 0;
        alarm[3] = 10;
    }
    if (((keyboard_check_pressed(ord("A")) && obj_options.WASDControls) || (keyboard_check_pressed(vk_left) && obj_options.arrowKeyControls)) && leftArrowDoubleClick == 1 && numMonsterBarriers < 1) {
        instance_create_layer(x - 95, y, "Instances", obj_swimmerOneMonsterBarrier);
        leftArrowDoubleClick = 0;
        numMonsterBarriers++;
    }
    if ((keyboard_check_released(ord("D")) && obj_options.WASDControls) || (keyboard_check_released(vk_right) && obj_options.arrowKeyControls)) {
        leftArrowDoubleClick = 0;
        rightArrowDoubleClick = 1;
        downArrowDoubleClick = 0;
        UpArrowDoubleClick = 0;
        alarm[3] = 10;
    }
    if (((keyboard_check_pressed(ord("D")) && obj_options.WASDControls) || (keyboard_check_pressed(vk_right) && obj_options.arrowKeyControls)) && rightArrowDoubleClick == 1 && numMonsterBarriers < 1) {
        instance_create_layer(x + 95, y, "Instances", obj_swimmerOneMonsterBarrier);
        rightArrowDoubleClick = 0;
        numMonsterBarriers++;
    }
    if ((keyboard_check_released(ord("W")) && obj_options.WASDControls) || (keyboard_check_released(vk_up) && obj_options.arrowKeyControls)) {
        leftArrowDoubleClick = 0;
        rightArrowDoubleClick = 0;
        downArrowDoubleClick = 0;
        UpArrowDoubleClick = 1;
        alarm[3] = 10;
    }
    if (((keyboard_check_pressed(ord("W")) && obj_options.WASDControls) || (keyboard_check_pressed(vk_up) && obj_options.arrowKeyControls)) && UpArrowDoubleClick == 1 && numMineBarriers < 1) {
        instance_create_layer(x, y - 110, "Instances", obj_swimmerOneMineBarrier);
        UpArrowDoubleClick = 0;
        numMineBarriers++;
    }
    if ((keyboard_check_released(ord("S")) && obj_options.WASDControls) || (keyboard_check_released(vk_down) && obj_options.arrowKeyControls)) {
        leftArrowDoubleClick = 0;
        rightArrowDoubleClick = 0;
        downArrowDoubleClick = 1;
        UpArrowDoubleClick = 0;
        alarm[3] = 10;
    }
    if (((keyboard_check_pressed(ord("S")) && obj_options.WASDControls) || (keyboard_check_pressed(vk_down) && obj_options.arrowKeyControls)) && downArrowDoubleClick == 1 && numMineBarriers < 1) {
        instance_create_layer(x, y + 110, "Instances", obj_swimmerOneMineBarrier);
        downArrowDoubleClick = 0;
        numMineBarriers++;
    }
}