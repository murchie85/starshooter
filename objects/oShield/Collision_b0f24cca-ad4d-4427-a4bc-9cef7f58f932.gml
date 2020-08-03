/// @description Insert description here
// You can write your code in this editor
// HITCOLOUR FLAG
if (HIT==0){HIT = 1;} else{hitColorTimer=0}

shieldHealth = shieldHealth - 1;

if (shieldHealth < 2 ){
	instance_destroy()
		}
with(other){instance_destroy()}