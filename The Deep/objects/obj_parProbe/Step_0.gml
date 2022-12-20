if (state = 0 && (!instance_exists(obj_swimmerTwo) && obj_swimmerOne.singleplayer)) {
    audio_play_sound_on(probeEmitter, snd_probeCreation, 1, 1)
    state = 1
	isPlayingSound = true;
}
audio_emitter_position(probeEmitter, x, y, 0)
if collision_circle(x, y, detectionRadius, obj_fishFriendLeft, false, true) {
    obj_fishFriendLeft.visible = true;
}
if collision_circle(x, y, detectionRadius, obj_fishFriendRight, false, true) {
    obj_fishFriendRight.visible = true;
}










