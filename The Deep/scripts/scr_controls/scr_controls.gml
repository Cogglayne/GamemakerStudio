function LeftHand() {
    if (obj_options.WASDControls) {
		arrowAndWASDBarrierCreation()
        if (keyboard_check(vk_shift) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
				setProbeDirection()
                speed = 5;
            }
            probeExists = true;
        }
        if (keyboard_check_pressed(20)) {
			toggleLight()
        }
    }
}

function RightHand() {
    if (obj_options.arrowKeyControls) {
		arrowAndWASDBarrierCreation()
        if (keyboard_check(vk_numpad0) && !probeExists) {
            instance_create_layer(x, y, "Instances", obj_probe);
            with(obj_probe) {
				setProbeDirection()
                speed = 5;
            }
            probeExists = true;
        }
    }
}

function Standard() {
    if (obj_options.mouseAndArrowKeyControls) {
        if (mouse_check_button_pressed(mb_left) && numMonsterBarriers < 1) {
            if (mouse_x < x) {
                instance_create_layer(x - 50, y, "Instances", obj_swimmerOneMonsterBarrier);
                numMonsterBarriers++;
            } else if (mouse_x > x) {
                instance_create_layer(x + 50, y, "Instances", obj_swimmerOneMonsterBarrier);
                numMonsterBarriers++;
            }
        }
        if (mouse_check_button_pressed(mb_right) && numMineBarriers < 1) {
            if (mouse_y > y) {
                instance_create_layer(x, y + 70, "Instances", obj_swimmerOneMineBarrier);
                numMineBarriers++;
            } else if (mouse_y < y) {
                instance_create_layer(x, y - 70, "Instances", obj_swimmerOneMineBarrier);
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

