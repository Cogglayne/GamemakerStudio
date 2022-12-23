if (instance_exists(obj_horror)) {
    horrorExists = true;
} else {
    horrorExists = false;
}

if (!horrorExists && spawnTimer == 0) {
    if (leftSpawn) {
        instance_create_layer(480, 1000, "Instances", obj_horror);
        leftSpawn = false;
        rightSpawn = true;
    } else {
        instance_create_layer(4520, 1000, "Instances", obj_horror);
        rightSpawn = false;
        leftSpawn = true;
    }

}















