draw_self()
if(mineTutorialActive){
if(mineTutorialTrial){
text = "Now you try\n remember right click in a mine's direction\n to deploy a barrier to redirect it"
}else{
text = "Right click in a mine's direction\n to deploy a barrier to redirect it"
}
}else if (monsterTutorialActive){
if(monsterTutorialTrial){
text = "Now you try\n remember left click in a monster's direction\n to deploy a barrier to redirect it"		
}else{
text = "Left click in a monster's direction\n to deploy a barrier to redirect it"	
}
}else if (evolvedMonsterTutorialOneActive){
if(evolvedMonsterTutorialTrialOne){
text = "Now you try\n remember right click in an evolved monster's direction\n to deploy a barrier to redirect it"	
}else{
text = "Right click in a evolved monster's direction\n to deploy a barrier to redirect it"	
}
}else if (evolvedMonsterTutorialTwoActive){
if (evolvedMonsterTutorialTrialTwo){
text = "Now you try\n remember left click in an evolved monster's direction\n to deploy a barrier to redirect it"	
}else{
text = "Left click in a evolved monster's direction\n to deploy a barrier to redirect it"
}
}else if (probeTutorialActive){
if(probeTutorialTrial){
text = "Now you try\n remember hit control to spawn the probe that will go towards the mouse to give you vision in a direction"		
}else{
text = "Hit control to spawn a probe that will go towards the mouse to give you vision in direction"
}
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_colour(x, y-150, text, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_colour(x, y+150, textTwo, .5, .5, image_angle, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


























