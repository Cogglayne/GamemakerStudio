var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var hove = point_in_rectangle(mouseX,mouseY,x,y,x+width,y+height);
if(hove){
	if(obj_disabilities.blindMode && !soundHasBeenPlayed && !audio_is_playing(soundToPlay)){
	stopButtonSounds()
	audio_play_sound(soundToPlay,1,0)
	soundHasBeenPlayed = true;
	}
}else{
soundHasBeenPlayed = false;
}
var click = hover && mouse_check_button_pressed(mb_left);
hover = lerp(hover,hove,0.1)
if(click && text = "Quit"){
game_end();
}else if(click && text = "Monster Tutorial"){
obj_trainer.monsterTutorialActive = true;
obj_trainer.monsterTutorialTrial = false;
obj_trainer.tutorialRoom = TutorialMonster;
room_goto(targetRoom);	
}else if(click && text = "Mine Tutorial"){
obj_trainer.mineTutorialActive = true;
obj_trainer.mineTutorialTrial = false;
obj_trainer.tutorialRoom = TutorialMine;
room_goto(targetRoom);	
}else if(click && text = "Evolved Monster Tutorial Two"){
obj_trainer.evolvedMonsterTutorialTwoActive = true;
obj_trainer.evolvedMonsterTutorialTrialTwo = false;
obj_trainer.tutorialRoom = TutorialMonsterEvolvedTwo;
room_goto(targetRoom);		
}else if(click && text = "Evolved Monster Tutorial One"){
obj_trainer.evolvedMonsterTutorialOneActive = true;
obj_trainer.evolvedMonsterTutorialTrialOne = false;
obj_trainer.tutorialRoom = TutorialMonsterEvolvedOne;
room_goto(targetRoom);		
}else if(click && text = "Angler Tutorial"){
obj_trainer.anglerTutorialActive = true;
obj_trainer.anglerTutorialTrial = false;
obj_trainer.tutorialRoom = TutorialAngler;
room_goto(targetRoom);	
}else if(click && text = "Probe Tutorial"){
obj_trainer.probeTutorialActive = true;
obj_trainer.probeTutorialTrial = false;
obj_trainer.tutorialRoom = TutorialProbe;
room_goto(targetRoom);
}else if(click && text = "Replay Tutorial"){
switch(obj_trainer.tutorialRoom){
	case TutorialAngler:
	obj_trainer.anglerTutorialTrial = false;
	break;
	case TutorialMonster:
	obj_trainer.monsterTutorialTrial = false;
	break;
	case TutorialMine:
	obj_trainer.mineTutorialTrial = false;
	break;
	case TutorialProbe:
	obj_trainer.probeTutorialTrial = false;
	break;
	case TutorialMonsterEvolvedOne:
	obj_trainer.evolvedMonsterTutorialTrialOne = false;
	break;
	case TutorialMonsterEvolvedTwo:
	obj_trainer.evolvedMonsterTutorialTrialTwo = false;
	break;
}
room_goto(obj_trainer.tutorialRoom)
}else if(click && text = "Next Tutorial"){
switch(obj_trainer.tutorialRoom){
	case TutorialAngler:
	obj_trainer.anglerTutorialActive = false;
	obj_trainer.anglerTutorialTrial = false;
	room_goto(Tutorial)
	break;
	case TutorialMonster:
	obj_trainer.monsterTutorialActive = false;
	obj_trainer.monsterTutorialTrial = false;
	obj_trainer.mineTutorialActive = true;
	obj_trainer.mineTutorialTrial = false;
	obj_trainer.tutorialRoom = TutorialMine;
	room_goto(TutorialMine)
	break;
	case TutorialMine:
	obj_trainer.mineTutorialActive = false;
	obj_trainer.mineTutorialTrial = false;
	obj_trainer.evolvedMonsterTutorialOneActive = true;
	obj_trainer.evolvedMonsterTutorialTrialOne = false;
	obj_trainer.tutorialRoom = TutorialMonsterEvolvedOne;
	room_goto(TutorialMonsterEvolvedOne)
	break;
	case TutorialProbe:
	obj_trainer.probeTutorialActive = false;
	obj_trainer.probeTutorialTrial = false;
	obj_trainer.anglerTutorialActive = true;
	obj_trainer.anglerTutorialTrial = false;
	obj_trainer.tutorialRoom = TutorialAngler;
	room_goto(TutorialAngler)
	break;
	case TutorialMonsterEvolvedOne:
	obj_trainer.evolvedMonsterTutorialOneActive = false;
	obj_trainer.evolvedMonsterTutorialTrialOne = false;
	obj_trainer.evolvedMonsterTutorialTwoActive = true;
	obj_trainer.evolvedMonsterTutorialTrialTwo = false;
	obj_trainer.tutorialRoom = TutorialMonsterEvolvedTwo;
	room_goto(TutorialMonsterEvolvedTwo)
	break;
	case TutorialMonsterEvolvedTwo:
	obj_trainer.evolvedMonsterTutorialTwoActive = false;
	obj_trainer.evolvedMonsterTutorialTrialTwo = false;
	obj_trainer.probeTutorialActive = true;
	obj_trainer.probeTutorialTrial = false;
	obj_trainer.tutorialRoom = TutorialAngler;
	room_goto(TutorialProbe)
	break;
}
}else if(click && text = "Buy a Light Cosmetic for $10"){
obj_microtransactions.lightCosmeticBought = true;	
}else if(click && text = "Buy a Swimmer Cosmetic for $10"){
obj_microtransactions.swimmerSkinBought = true;	
}else if(click && text = "Delay Timer For $1"){
obj_microtransactions.timerDelay = true;	
}else if(click && text = "Slow Down Enemies For $1"){
obj_microtransactions.enemiesSlowed = true;	
}else if(click && text = "Continue level for $1"){
obj_microtransactions.extraLife = true;	
obj_levelTracker.textShouldBeShowing = false;
instance_activate_layer("Whales")
instance_activate_layer("AmbientBackground")
instance_activate_layer("Instances")
instance_activate_layer("LightInstance")
instance_deactivate_layer("Extra") 
}else if(click && text = "Easy"){
obj_levelTracker.levelDiffuclty = "Easy"
room_goto(targetRoom);
}else if(click && text = "Medium"){
obj_levelTracker.levelDiffuclty = "Medium"
room_goto(targetRoom);
}else if(click && text = "Hard"){
obj_levelTracker.levelDiffuclty = "Hard"
room_goto(targetRoom);
}else if (click && text = "Toggle Swimmer Cosmetic"){
if(obj_microtransactions.swimmerSkinBought){
if(obj_microtransactions.swimmerSkin == false){
obj_microtransactions.swimmerSkin = true
}else if(obj_microtransactions.swimmerSkin == true){
obj_microtransactions.swimmerSkin = false
}
}
}else if (click && text = "Toggle Light Cosmetic"){
if(obj_microtransactions.lightCosmeticBought){
if(obj_microtransactions.newLightEffect == false){
obj_microtransactions.newLightEffect = true	
}else if (obj_microtransactions.newLightEffect == true){
	obj_microtransactions.newLightEffect = false
}
}
}else if(click && text = "Left Handed"){
obj_disabilities.leftHandControls = true;	
obj_disabilities.rightHandControls = false;
obj_disabilities.normal = false;
obj_disabilities.poorReactivity = false;
}else if(click && text = "Right Handed"){
obj_disabilities.leftHandControls = false;	
obj_disabilities.rightHandControls = true;
obj_disabilities.normal = false;
obj_disabilities.poorReactivity = false;
}else if(click && text = "Standard"){
obj_disabilities.leftHandControls = false;	
obj_disabilities.rightHandControls = false;
obj_disabilities.normal = true;
obj_disabilities.poorReactivity = false;
}else if(click && text = "Poor Reactivity"){
obj_disabilities.leftHandControls = false;	
obj_disabilities.rightHandControls = false;
obj_disabilities.normal = false;
obj_disabilities.poorReactivity = true;
}else if(click && text = "Blind Mode"){
if(obj_disabilities.blindMode == false){
obj_disabilities.blindMode = true	
}else if (obj_disabilities.blindMode == true){
obj_disabilities.blindMode = false
}
}else if (click && text == "Coming Soon"){
error = true;
}else if (click && text = "ADHD"){
if(obj_disabilities.ADHD == false){
obj_disabilities.ADHD = true	
}else if (obj_disabilities.ADHD == true){
obj_disabilities.ADHD = false
}
}else if (click && text = "Dyscalculia"){
if(obj_disabilities.dyscalculia  == false){
obj_disabilities.dyscalculia  = true	
}else if (obj_disabilities.dyscalculia  == true){
obj_disabilities.dyscalculia = false
}
}else if (click && text = "Dyslexia"){
if(obj_disabilities.dyslexia  == false){
obj_disabilities.dyslexia = true	
}else if (obj_disabilities.dyslexia  == true){
obj_disabilities.dyslexia = false
}
}else if (click && text = "Executive Functioning"){
if(obj_disabilities.executiveFunctioning == false){
obj_disabilities.executiveFunctioning = true	
}else if (obj_disabilities.executiveFunctioning == true){
obj_disabilities.executiveFunctioning = false
}
}else if (click){
room_goto(targetRoom);
}
