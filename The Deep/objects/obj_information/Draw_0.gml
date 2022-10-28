if (instance_exists(obj_swimmer)){
if(instance_exists(obj_horror)){
if(point_distance(obj_swimmer.x,obj_swimmer.y,obj_horror.x,obj_horror.y) <= obj_horror.audioMaxDistanceToBeHeard){
draw_set_color(#C0c0c0)
draw_circle(obj_horror.x,obj_horror.y,8,false)
}
}
if(instance_exists(obj_mine)){
var mine = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_mine)
if(point_distance(obj_swimmer.x,obj_swimmer.y,mine.x,mine.y) <= mine.audioMaxDistanceToBeHeard){
draw_set_color(#C0c0c0)
draw_circle(mine.x,mine.y,8,false)
}
}
if(instance_exists(obj_monster)){
var monster = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_monster)
if(point_distance(obj_swimmer.x,obj_swimmer.y,monster.x,monster.y) <= monster.audioMaxDistanceToBeHeard){
draw_set_color(#C0c0c0)
draw_circle(monster.x,monster.y,8,false)
}
}
if(instance_exists(obj_monsterEvolved)){
var evolvedMonster = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_monsterEvolved)
if(point_distance(obj_swimmer.x,obj_swimmer.y,evolvedMonster.x,evolvedMonster.y) <= evolvedMonster.audioMaxDistanceToBeHeard){
draw_set_color(#C0c0c0)
draw_circle(evolvedMonster.x,evolvedMonster.y,8,false)
}
}
if(instance_exists(obj_waveGenerator)){
var wave = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_waveGenerator);
if(point_distance(obj_swimmer.x,obj_swimmer.y,wave.x,wave.y) <= wave.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
if(wave.text != ""){
draw_circle(wave.x,wave.y+9525,8,false)
}
}
}
if(instance_exists(obj_bubble)){
var bubbles = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_bubble)
if(point_distance(obj_swimmer.x,obj_swimmer.y,bubbles.x,bubbles.y+50) <= bubbles.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(bubbles.x,bubbles.y+60,8,false)
}
}
if(instance_exists(obj_whale)){
if(point_distance(obj_swimmer.x,obj_swimmer.y,obj_whale.x,obj_whale.y) <= obj_whale.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(obj_whale.x,obj_whale.y,8,false)
}
}
if(instance_exists(obj_ship)){
if(point_distance(obj_swimmer.x,obj_swimmer.y,obj_ship.x,obj_ship.y) <= obj_ship.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(obj_ship.x,obj_ship.y-350,8,false)
}
}
if(instance_exists(obj_brownWhite_beige)){
var brownWhite = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_brownWhite_beige)
if(point_distance(obj_swimmer.x,obj_swimmer.y,brownWhite.x,brownWhite.y) <= brownWhite.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(brownWhite.x,brownWhite.y,8,false)
}
}
if(instance_exists(obj_greenRed_yellow)){
var greenRed = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_greenRed_yellow)
if(point_distance(obj_swimmer.x,obj_swimmer.y,greenRed.x,greenRed.y) <= greenRed.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(greenRed.x,greenRed.y,8,false)
}
}
if(instance_exists(obj_orangeBlue_brown)){
var orangeBlue = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_orangeBlue_brown)
if(point_distance(obj_swimmer.x,obj_swimmer.y,orangeBlue.x,orangeBlue.y) <= orangeBlue.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(orangeBlue.x,orangeBlue.y,8,false)
}
}
if(instance_exists(obj_redBlue_violet)){
var redBlue = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_redBlue_violet)
if(point_distance(obj_swimmer.x,obj_swimmer.y,redBlue.x,redBlue.y) <= redBlue.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(redBlue.x,redBlue.y,8,false)
}
}
if(instance_exists(obj_redYellow_orange)){
var redYellow = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_redYellow_orange)
if(point_distance(obj_swimmer.x,obj_swimmer.y,redYellow.x,redYellow.y) <= redYellow.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(redYellow.x,redYellow.y,8,false)
}
}
if(instance_exists(obj_whiteBlack_grey)){
var whiteBlack = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_whiteBlack_grey)
if(point_distance(obj_swimmer.x,obj_swimmer.y,whiteBlack.x,whiteBlack.y) <= whiteBlack.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(whiteBlack.x,whiteBlack.y,8,false)
}
}
if(instance_exists(obj_whiteRed_pink)){
var whiteRed = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_whiteRed_pink)
if(point_distance(obj_swimmer.x,obj_swimmer.y,whiteRed.x,whiteRed.y) <= whiteRed.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(whiteRed.x,whiteRed.y,8,false)
}
}
if(instance_exists(obj_yellowBlue_green)){
var yellowBlue = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_yellowBlue_green)
if(point_distance(obj_swimmer.x,obj_swimmer.y,yellowBlue.x,yellowBlue.y) <= yellowBlue.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(yellowBlue.x,yellowBlue.y,8,false)
}
}
if(instance_exists(obj_swimmerMonsterBarrier)){
var monsterBarrier = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_swimmerMonsterBarrier)
if(point_distance(obj_swimmer.x,obj_swimmer.y,monsterBarrier.x,monsterBarrier.y) <= monsterBarrier.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(monsterBarrier.x,monsterBarrier.y,8,false)
}
}
if(instance_exists(obj_swimmerMineBarrier)){
var mineBarrier = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_swimmerMineBarrier)
if(point_distance(obj_swimmer.x,obj_swimmer.y,mineBarrier.x,mineBarrier.y) <= mineBarrier.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(mineBarrier.x,mineBarrier.y,8,false)
}
}
if(instance_exists(obj_probe)){
var probe = instance_nearest(obj_swimmer.x,obj_swimmer.y,obj_probe)
if(point_distance(obj_swimmer.x,obj_swimmer.y,probe.x,probe.y) <= probe.audioMaxDistanceToBeHeard){
draw_set_color(#520089)
draw_circle(probe.x,probe.y,8,false)
}
}
}















