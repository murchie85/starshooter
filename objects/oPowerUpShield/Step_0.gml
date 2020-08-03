/// @description Insert description here
// You can write your code in this editor
direction = 270


speed = 1
x += horSpeed
if(x > room_width-8){horSpeed = - horSpeed}
if(x< -8){horSpeed = - horSpeed}


if (y > room_height){instance_destroy()}