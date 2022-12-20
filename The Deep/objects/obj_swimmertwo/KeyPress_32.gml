    if (numProbes > 2) {
        instance_destroy(instance_find(obj_stationaryProbe, 0))
        numProbes--;
    }
    instance_create_layer(x, y, "Instances", obj_stationaryProbe);
    numProbes++;
































