/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Asteroid Created  : " + string(instance_id));
asteroidHealth = asteroidHealth - 1;

if (asteroidHealth < 1 ){

	instance_destroy()

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}
