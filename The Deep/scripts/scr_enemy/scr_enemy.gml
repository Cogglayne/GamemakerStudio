function enemyLayerManipulation(microtransaction) {
    if (microtransaction == "Extra") {
        instance_activate_layer("Extra")
    } else if (microtransaction == "Wait") {
        instance_create_layer(2400, 0, "Wait", obj_wait)
        instance_activate_layer("Wait")
    }
    instance_deactivate_layer("Instances")
    instance_deactivate_layer("LightInstance")
    instance_deactivate_layer("AmbientBackground")
}