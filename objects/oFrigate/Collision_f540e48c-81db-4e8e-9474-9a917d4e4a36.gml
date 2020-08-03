
with(other){
	if (id == oFrigate.bulletId){exit;}
	oFrigate.bulletId = id
	instance_destroy()
}

// HITCOLOUR FLAG
if (hit==0){hit = 1;} else{hitColorTimer=0}

enemytwoHealth = enemytwoHealth - 1;

if (enemytwoHealth < 1 ){
	score += 300
	instance_destroy()
	instance_create_layer(x,y,"Instances",oExplosionOne)

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}