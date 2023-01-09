// sets the trainers location depending on which tutorial is 
// active and which part of the tutorial is active
// text to speech if active for trainer tutorials
// movement tutorial
if (tutorials[0] && !tutorials[1]) {
    if (point_distance(x, y, 1280, 736) > 1 && movementControl[0]) {
        sprite_index = spr_blackswimmerSwimmingRight
        x += 5;
    }
    if (point_distance(x, y, 1280, 736) < 1) {
        movementControl[0] = false;
        movementControl[1] = true;
    }
    if (point_distance(x, y, 1280, 416) > 1 && movementControl[1]) {
        sprite_index = spr_blackswimmerSwimmingUpRight
        y -= 5;
    }
    if (point_distance(x, y, 1280, 416) < 1) {
        movementControl[1] = false;
        movementControl[2] = true;
    }
    if (point_distance(x, y, 5000, 416) > 1 && movementControl[2]) {
        sprite_index = spr_blackswimmerSwimmingRight
        x += 5;
    }
}
if (tutorials[0] && tutorials[1]) {
    sprite_index = spr_blackswimmerIdleRight;
    if (point_distance(x, y, 700, 500) > 1) {
        stopTrainerSounds()
        playSound(snd_movementTutorialTrial)
        x = 700;
        y = 500;
    }
}
// mine tutorial
if (tutorials[2] && !tutorials[3]) {
    if (point_distance(x, y, 1024, 1200) > 1) {
        stopTrainerSounds()
        playSound(snd_mineTutorialActive)
        x = 1024;
        y = 1200;
    }
    if (obj_swimmerOne.numMineBarriers < 1) {
        instance_create_layer(x, y - 140, "Instances", obj_swimmerOneMineBarrier);
        obj_swimmerOne.numMineBarriers++;
    }
}
if (tutorials[2] && tutorials[3]) {
    if (point_distance(x, y, 1600, 992) > 1) {
        stopTrainerSounds()
        playSound(snd_mineTutorialTrial)
        x = 1600;
        y = 992;
    }
}
// monster tutorial
if (tutorials[4] && !tutorials[5]) {
    if (point_distance(x, y, 500, 992) > 1) {
        stopTrainerSounds()
        playSound(snd_monsterTutorialActive)
        x = 500;
        y = 992;
    }
    if (obj_swimmerOne.numMonsterBarriers < 1) {
        instance_create_layer(x + 100, y, "Instances", obj_swimmerOneMonsterBarrier);
        obj_swimmerOne.numMonsterBarriers++;
    }
}

if (tutorials[4] && tutorials[5]) {
    if (point_distance(x, y, 1024, 300) > 1) {
        stopTrainerSounds()
        playSound(snd_monsterTutorialTrial)
        x = 1024;
        y = 300;
    }
}
// evolved monster tutorial
if (tutorials[6] && !tutorials[7]) {
    sprite_index = spr_blackswimmerIdleLeft
    if (point_distance(x, y, 1900, 850) > 1) {
        stopTrainerSounds()
        playSound(snd_evolvedMonsterTutorialOneActive)
        x = 1900;
        y = 850;
    }
    if (obj_swimmerOne.numMineBarriers < 1) {
        instance_create_layer(x, y - 140, "Instances", obj_swimmerOneMineBarrier);
        obj_swimmerOne.numMineBarriers++;
    }
}
if (tutorials[6] && tutorials[7]) {
    sprite_index = spr_blackswimmerIdleLeft
    if (point_distance(x, y, 1024, 300) > 1) {
        stopTrainerSounds()
        playSound(snd_evolvedMonsterTutorialTrialOne)
        x = 1024;
        y = 300;
    }
}

if (tutorials[8] && !tutorials[9]) {
    sprite_index = spr_blackswimmerIdleLeft
    if (point_distance(x, y, 2000, 700) > 1) {
        stopTrainerSounds()
        playSound(snd_evolvedMonsterTutorialTwoActive)
        x = 2000;
        y = 700;
    }
    if (obj_swimmerOne.numMonsterBarriers < 1) {
        instance_create_layer(x - 100, y, "Instances", obj_swimmerOneMonsterBarrier);
        obj_swimmerOne.numMonsterBarriers++;
    }
}

if (tutorials[8] && tutorials[9]) {
    sprite_index = spr_blackswimmerIdleLeft
    if (point_distance(x, y, 1024, 300) > 1) {
        stopTrainerSounds()
        playSound(snd_evolvedMonsterTutorialTrialTwo)
        x = 1024;
        y = 300;
    }
}
// probe tutorial
if (tutorials[10] && !tutorials[11]) {
    sprite_index = spr_blackswimmerIdleRight
    if (point_distance(x, y, 1200, 500) > 1) {
        stopTrainerSounds()
        playSound(snd_probeTutorialActive)
        x = 1200;
        y = 500;
    }
    if (!obj_swimmerOne.probeExists) {
        instance_create_layer(x, y, "Instances", obj_probe);
        with(obj_probe) {
            direction = 0;
            speed = 5;
        }
        obj_swimmerOne.probeExists = true;
    }
}

if (tutorials[10] && tutorials[11]) {
    sprite_index = spr_blackswimmerIdleRight
    if (point_distance(x, y, 1024, 800) > 1) {
        stopTrainerSounds()
        playSound(snd_probeTutorialTrial)
        x = 1024;
        y = 800;
    }
}

// angler tutorial
if (horrorFollowing && !tutorials[12] && !tutorials[13]) {
    sprite_index = spr_blackswimmerIdleLeft
    if (timer <= 0) {
        if (point_distance(x, y, 4300, 1800) > 1) {
            stopTrainerSounds()
            playSound(snd_anglerTutorialActive)
            x = 4300;
            y = 1800;
        }
    }
    if (point_distance(x, y, obj_horrorTutorial.x, obj_horrorTutorial.y) <= 900) {
        instance_destroy(obj_trainerLight)
    }
}
if (tutorials[12] && tutorials[13]) {
    sprite_index = spr_blackswimmerIdleLeft
}











