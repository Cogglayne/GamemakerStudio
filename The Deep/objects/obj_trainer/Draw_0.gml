draw_self()
// Text shows depending on which tutorial is active and
// which portion of the tutorial is active
if (room == TutorialClear || room == TutorialFailed || room == Tutorial) {
    text = ""
} else {
     if (tutorials[0]) {
        if (tutorials[1]) {
            text = "Now you try\n remember to use the arrow keys to move from one side\n to the end of the other and make sure to avoid enemies"
        } else {
            text = "Use the arrow keys to move from one side to the end of the other\n and make sure to avoid enemies"
        }
    } else if (tutorials[2]) {
        if (tutorials[3]) {
            text = "Now you try\n remember right click in a mine's direction\n to deploy a barrier to redirect it"
        } else {
            text = "Right click in a mine's direction\n to deploy a barrier to redirect it"
        }
    } else if (tutorials[4]) {
        if (tutorials[5]) {
            text = "Now you try\n remember left click in a monster's direction\n to deploy a barrier to redirect it"
        } else {
            text = "Left click in a monster's direction\n to deploy a barrier to redirect it"
        }
    } else if (tutorials[6]) {
        if (tutorials[7]) {
            text = "Now you try\n remember right click in an evolved monster's direction\n to deploy a barrier to redirect it"
        } else {
            text = "Right click in an evolved monster's direction\n to deploy a barrier to redirect it"
        }
    } else if (tutorials[8]) {
        if (tutorials[9]) {
            text = "Now you try\n remember left click in an evolved monster's direction\n to deploy a barrier to redirect it"
        } else {
            text = "Left click in an evolved monster's direction\n to deploy a barrier to redirect it"
        }
    } else if (tutorials[10]) {
        if (tutorials[11]) {
            text = "Now you try\n remember hit control to spawn a probe\n that will go towards the mouse to give you vision in a direction"
        } else {
            text = "Hit control to spawn a probe that will go toward the mouse to give you vision in a direction\n probes are an integral part of survival down here"
        }
    } else if (horrorFollowing) {
        if (tutorials[13 ]) {
            text = "Now you try\n remember hit shift to turn off your light and hide"
        } else {
            text = "Hit shift when the angler gets close to turn off your light and hide\n swim away while the angler cannot see you"
        }
    }
}
// aligns text in the center
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_colour(x, y - 150, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_colour(x, y + 150, textTwo, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);






















