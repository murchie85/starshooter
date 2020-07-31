/// @description enemy spawn
// You can write your code in this editor
if(room!= rm_levelOne){ exit;}



var xx = choose(irandom_range(0,room_width));
var yy = irandom_range(-5,-700)
//choose(oTank,oFrigate,oScout,oFreighter)
instance_create_layer(xx,yy, "Instances", choose(oFrigate,oScout,oDestroyer,oFreighter,oSpinner,oStealth));



if (bossFlag != 1){alarm[1] = irandom_range(7,14)   *room_speed;}      