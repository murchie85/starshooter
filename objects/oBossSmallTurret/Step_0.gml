/// @description Insert description here
// You can write your code in this editor
destroyMeCounter += 1
if(destroyMeCounter > 1){instance_destroy()}
if(fire_command =1){instance_create_layer(x,y,"Instances",oScoutRound); }
fire_command=0;

