shipEmmiter = audio_emitter_create();
audioMaxDistanceToBeHeard = 1000;
audioStartsToDropAt = 800;
audio_emitter_position(shipEmmiter, x, y, 0)
audio_emitter_falloff(shipEmmiter, audioStartsToDropAt, audioMaxDistanceToBeHeard, 1)
state = 0;
text = "[Haunting Sound Of A Shipwreck]"




























