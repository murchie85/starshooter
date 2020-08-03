/// @die after x hits 
with(other){
	if (id == oStealth.bulletId){exit;}
	oStealth.bulletId = id
	instance_destroy()
}

enemytwoHealth = enemytwoHealth - 1;
if (enemytwoHealth < 1 ){
	score += 100
	instance_create_layer(x,y,"Instances",oExplosionSmall)
	instance_destroy()

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}