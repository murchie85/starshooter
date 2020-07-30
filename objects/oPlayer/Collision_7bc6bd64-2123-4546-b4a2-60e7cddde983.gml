/// @description die if collide with asteroid
// You can write your code in this editor

instance_destroy()
lives -= 1;
repeat(10){
	instance_create_layer(x,y,"Instances",oShipDebris);
}
with(oGame){
	alarm[2] = room_speed;
}
