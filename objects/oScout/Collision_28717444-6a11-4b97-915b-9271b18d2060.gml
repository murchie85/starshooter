/// @die after x hits 
with(other){
	if (id == oScout.bulletId){exit;}
	oScout.bulletId = id
	instance_destroy()
}

enemytwoHealth = enemytwoHealth - 1;
if (enemytwoHealth < 1 ){
	score += 100
	instance_destroy()
	choice = irandom_range(0,1)
	if(choice==1){instance_create_layer(x,y,"Instances",oExplosionSmall)}

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}