draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
showClosedCaptioning(200,0, "[The Angler Growls]")
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (instance_exists(obj_trainer)) {
    if (obj_trainer.horrorFollowing) {
        setHorrorSpriteIndex(obj_trainer)
    } else {
        setHorrorSpriteIndex(obj_swimmerOne)
    }
} else {
    setHorrorSpriteIndex(obj_swimmerOne)
}


















