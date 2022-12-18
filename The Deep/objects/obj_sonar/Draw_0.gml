if (instance_exists(obj_swimmer)) {
    if (obj_swimmer.singleplayer && obj_disabilities.sonar) {
        if (instance_exists(obj_parHorror)) {
            if (point_distance(obj_swimmer.x, obj_swimmer.y, obj_parHorror.x, obj_parHorror.y) <= obj_parHorror.audioMaxDistanceToBeHeard) {
                draw_set_color(#C0c0c0)
                draw_circle(obj_parHorror.x, obj_parHorror.y, 8, false)
            }
        }
        if (instance_exists(obj_parPatrollingEnemy)) {
            var enemy = instance_nearest(obj_swimmer.x, obj_swimmer.y, obj_parPatrollingEnemy)
			 if (point_distance(obj_swimmer.x, obj_swimmer.y, enemy.x, enemy.y) <= enemy.audioMaxDistanceToBeHeard) {
                draw_set_color(#C0c0c0)
                draw_circle(enemy.x, enemy.y, 8, false)
            }
        }

		if(instance_exists(obj_parAmbient)){
		 var ambient = instance_nearest(obj_swimmer.x, obj_swimmer.y, obj_parAmbient)
			if(point_distance(obj_swimmer.x,obj_swimmer.y,ambient.x,ambient.y) <= ambient.audioMaxDistanceToBeHeard) {
				draw_set_color(#520089)
				draw_circle(ambient.x,ambient.y,8,false)
			}
		}
		if (instance_exists(obj_parPollutant)) {
		var pollutant = instance_nearest(obj_swimmer.x, obj_swimmer.y, obj_parPollutant)
			 if (point_distance(obj_swimmer.x, obj_swimmer.y, pollutant.x, pollutant.y) <= pollutant.audioMaxDistanceToBeHeard) {
				 draw_set_color(#520089)
				draw_circle(pollutant.x,pollutant.y,8,false)
			}
		}
		if (instance_exists(obj_parBarrier)) {
		var barrier = instance_nearest(obj_swimmer.x, obj_swimmer.y, obj_parBarrier)
			 if (point_distance(obj_swimmer.x, obj_swimmer.y, barrier.x, barrier.y) <= barrier.audioMaxDistanceToBeHeard) {
				 draw_set_color(#520089)
				draw_circle(barrier.x,barrier.y,8,false)
			}
		}
		if (instance_exists(obj_probe)) {
		var probe = instance_nearest(obj_swimmer.x, obj_swimmer.y, obj_probe)
			 if (point_distance(obj_swimmer.x, obj_swimmer.y, probe.x, probe.y) <= probe.audioMaxDistanceToBeHeard) {
				 draw_set_color(#520089)
				draw_circle(probe.x,probe.y,8,false)
			}
		}
	}
}










