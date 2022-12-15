function LeftHand() {
    if (obj_disabilities.leftHandControls) {
        if (keyboard_check_released(ord("A"))) {
            leftArrowDoubleClick = 1;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(ord("A")) && leftArrowDoubleClick == 1 && numMonsterBarriers < 1) {
            instance_create_layer(x - 95, y, "Instances", obj_swimmerMonsterBarrier);
            leftArrowDoubleClick = 0;
            numMonsterBarriers++;
        }
        if (keyboard_check_released(ord("D"))) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 1;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(ord("D")) && rightArrowDoubleClick == 1 && numMonsterBarriers < 1) {
            instance_create_layer(x + 95, y, "Instances", obj_swimmerMonsterBarrier);
            rightArrowDoubleClick = 0;
            numMonsterBarriers++;
        }
        if (keyboard_check_released(ord("W"))) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 1;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(ord("W")) && UpArrowDoubleClick == 1 && numMineBarriers < 1) {
            instance_create_layer(x, y - 110, "Instances", obj_swimmerMineBarrier);
            UpArrowDoubleClick = 0;
            numMineBarriers++;
        }
        if (keyboard_check_released(ord("S"))) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 1;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(ord("S")) && downArrowDoubleClick == 1 && numMineBarriers < 1) {
            instance_create_layer(x, y + 110, "Instances", obj_swimmerMineBarrier);
            downArrowDoubleClick = 0;
            numMineBarriers++;
        }
        if (keyboard_check(vk_shift) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
                if (obj_swimmer.vsp == 0 && obj_swimmer.hsp == 0 && (obj_swimmer.sprite_index == spr_swimmerIdleLeft || obj_swimmer.sprite_index == spr_blackswimmerIdleLeft)) {
                    // left
                    direction = 180;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp == 0 && (obj_swimmer.sprite_index == spr_swimmerIdleRight || obj_swimmer.sprite_index == spr_blackswimmerIdleRight)) {
                    //right
                    direction = 0;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp < 0) {
                    // up and left
                    direction = 135;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp > 0) {
                    // up and right
                    direction = 45;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp < 0) {
                    // down and left
                    direction = 225;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp > 0) {
                    // down and right
                    direction = 315;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp > 0) {
                    // right
                    direction = 0;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp < 0) {
                    // left
                    direction = 180;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp == 0) {
                    // up
                    direction = 90;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp == 0) {
                    // down
                    direction = 270;
                }
                speed = 5;
            }
            probeExists = true;
        }
        if (keyboard_check_pressed(20)) {
            audio_play_sound(snd_light, 1, 0)
            if (instance_exists(obj_light)) {
                instance_destroy(obj_light)
            } else {
                instance_create_layer(obj_swimmer.x, obj_swimmer.y, "Instances", obj_light);
                obj_light.xBoundry = obj_levelTracker.lightX;
                obj_light.yBoundry = obj_levelTracker.lightY;
            }
        }
    }
}

function RightHand() {
    if (obj_disabilities.rightHandControls) {
        if (keyboard_check_released(vk_left)) {
            leftArrowDoubleClick = 1;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(vk_left) && leftArrowDoubleClick == 1 && numMonsterBarriers < 1) {
            instance_create_layer(x - 95, y, "Instances", obj_swimmerMonsterBarrier);
            leftArrowDoubleClick = 0;
            numMonsterBarriers++;
        }
        if (keyboard_check_released(vk_right)) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 1;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(vk_right) && rightArrowDoubleClick == 1 && numMonsterBarriers < 1) {
            instance_create_layer(x + 95, y, "Instances", obj_swimmerMonsterBarrier);
            rightArrowDoubleClick = 0;
            numMonsterBarriers++;
        }
        if (keyboard_check_released(vk_up)) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 0;
            UpArrowDoubleClick = 1;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(vk_up) && UpArrowDoubleClick == 1 && numMineBarriers < 1) {
            instance_create_layer(x, y - 110, "Instances", obj_swimmerMineBarrier);
            UpArrowDoubleClick = 0;
            numMineBarriers++;
        }
        if (keyboard_check_released(vk_down)) {
            leftArrowDoubleClick = 0;
            rightArrowDoubleClick = 0;
            downArrowDoubleClick = 1;
            UpArrowDoubleClick = 0;
            alarm[3] = 10;
        }
        if (keyboard_check_pressed(vk_down) && downArrowDoubleClick == 1 && numMineBarriers < 1) {
            instance_create_layer(x, y + 110, "Instances", obj_swimmerMineBarrier);
            downArrowDoubleClick = 0;
            numMineBarriers++;
        }
        if (keyboard_check(vk_numpad0) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
                if (obj_swimmer.vsp == 0 && obj_swimmer.hsp == 0 && (obj_swimmer.sprite_index == spr_swimmerIdleLeft || obj_swimmer.sprite_index == spr_blackswimmerIdleLeft)) {
                    // left
                    direction = 180;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp == 0 && (obj_swimmer.sprite_index == spr_swimmerIdleRight || obj_swimmer.sprite_index == spr_blackswimmerIdleRight)) {
                    //right
                    direction = 0;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp < 0) {
                    // up and left
                    direction = 135;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp > 0) {
                    // up and right
                    direction = 45;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp < 0) {
                    // down and left
                    direction = 225;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp > 0) {
                    // down and right
                    direction = 315;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp > 0) {
                    // right
                    direction = 0;
                } else if (obj_swimmer.vsp == 0 && obj_swimmer.hsp < 0) {
                    // left
                    direction = 180;
                } else if (obj_swimmer.vsp < 0 && obj_swimmer.hsp == 0) {
                    // up
                    direction = 90;
                } else if (obj_swimmer.vsp > 0 && obj_swimmer.hsp == 0) {
                    // down
                    direction = 270;
                }
                speed = 5;
            }
            probeExists = true;
        }
    }
}

function Standard() {
    if (obj_disabilities.normal) {
        if (mouse_check_button_pressed(mb_left) && numMonsterBarriers < 1) {
            if (mouse_x < x) {
                instance_create_layer(x - 50, y, "Instances", obj_swimmerMonsterBarrier);
                numMonsterBarriers++;
            } else if (mouse_x > x) {
                instance_create_layer(x + 50, y, "Instances", obj_swimmerMonsterBarrier);
                numMonsterBarriers++;
            }
        }
        if (mouse_check_button_pressed(mb_right) && numMineBarriers < 1) {
            if (mouse_y > y) {
                instance_create_layer(x, y + 70, "Instances", obj_swimmerMineBarrier);
                numMineBarriers++;
            } else if (mouse_y < y) {
                instance_create_layer(x, y - 70, "Instances", obj_swimmerMineBarrier);
                numMineBarriers++;
            }
        }
        if (keyboard_check(vk_control) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
                direction = point_direction(x, y, mouse_x, mouse_y);
                speed = 5;
            }
            probeExists = true;
        }
    }
}

function PoorReactivity() {
    if (obj_disabilities.poorReactivity) {
        if (mouse_check_button_pressed(mb_left) && numMonsterBarriers < 1) {
            if (mouse_x < x) {
                instance_create_layer(x - 100, y, "Instances", obj_swimmerMonsterBarrier);
                numMonsterBarriers++;
            } else if (mouse_x > x) {
                instance_create_layer(x + 100, y, "Instances", obj_swimmerMonsterBarrier);
                numMonsterBarriers++;
            }
        }
        if (mouse_check_button_pressed(mb_right) && numMineBarriers < 1) {
            if (mouse_y > y) {
                instance_create_layer(x, y + 140, "Instances", obj_swimmerMineBarrier);
                numMineBarriers++;
            } else if (mouse_y < y) {
                instance_create_layer(x, y - 140, "Instances", obj_swimmerMineBarrier);
                numMineBarriers++;
            }
        }
        if (keyboard_check(vk_control) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
                direction = point_direction(x, y, mouse_x, mouse_y);
                speed = 5;
            }
            probeExists = true;
        }
    }
}