/// @description Insert description here
// You can write your code in this editor

with(other){
	if (id == oDestroyer.bulletId){exit;}
	oDestroyer.bulletId = id
	instance_destroy()
}

// HITCOLOUR FLAG
if (hit==0){hit = 1;} else{hitColorTimer=0}

enemytwoHealth = enemytwoHealth - 1;

if (enemytwoHealth < 1 ){
	score += 100
	instance_destroy()

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}