/// @description Insert description here
// You can write your code in this editor

with(other){
	if (id == oBossOne.bulletId){exit;}
	oBossOne.bulletId = id
	instance_destroy()
}

bossHealth = bossHealth - 1;




show_debug_message("boss hit")
show_debug_message(string(bossHealth))
if (bossHealth < 1 ){
	score += 5000
	instance_destroy()

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}