/// @description Insert description here
// You can write your code in this editor
direction = 270

image_index = 0;
draw_self();
draw_sprite(stank, 4, x, y);

speed = 1
if (instance_exists(oPlayer)){hSpeed = oPlayer.movementSpeed - 2}else{exit;}


playerPos = oPlayer.x
if (x > playerPos){
	x -= hSpeed}
if (x < playerPos){
	x += hSpeed}



if (y > room_height){instance_destroy()}