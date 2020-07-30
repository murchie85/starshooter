/// @description Insert description here
// You can write your code in this editor
with(other){
	if (id == oEnemy1.bulletId){exit;}
	oEnemy1.bulletId = id
	instance_destroy()
}

enemyHealth = enemyHealth - 1;

if (enemyHealth < 1 ){
	score += 100
	instance_destroy()

		repeat(10){
			instance_create_layer(x,y,"Instances",oAsteroidDebris);
		}
}