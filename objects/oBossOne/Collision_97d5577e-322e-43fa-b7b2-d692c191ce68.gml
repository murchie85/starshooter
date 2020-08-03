/// @description Insert description here
// You can write your code in this editor

with(other){
	if (id == oBossOne.bulletId){exit;}
	oBossOne.bulletId = id
	instance_destroy()
}

bossHealth = bossHealth - 1;


// HITCOLOUR FLAG
if (hit==0){hit = 1;} else{hitColorTimer=0}

show_debug_message("boss hit")
show_debug_message(string(bossHealth))
if (bossHealth < 1 ){
	score += 5000
	oLevelOne.boss_defeated = 1;
	instance_destroy()
		instance_create_layer(x,y,"Instances",oExplosionOne)
		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}





