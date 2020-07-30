/// @description Insert description here
// You can write your code in this editor
direction = 270
salvoTimer += 1



// FIRE OPENING MISSILE SALVO
if (missile == 0 and y > 64){
	missile += 1 
	missileInstance = instance_create_layer(x,y,"Instances",oBossMissile);
	missileInstance.hspeed = -2
	
	missileInstance = instance_create_layer(x,y + 20,"Instances",oBossMissile);
	missileInstance.hspeed = -2
	
	missileInstance = instance_create_layer(x,y,"Instances",oBossMissile);
	missileInstance.hspeed = 2
	
	missileInstance = instance_create_layer(x,y + 20,"Instances",oBossMissile);
	missileInstance.hspeed = 2
	
	
	blast = instance_create_layer(x,y,"Instances",oBossBlast);
	with(blast){instance_destroy()}
	blastFlag = 1
}



// SUCCESSIVE SALVOS
if (missile > 0 and y > 64){
	

	 
		if(salvoTimer > 300){
	
		repeat(missile){
		missileInstance = instance_create_layer(x,y + irandom_range(-50,50),"Instances",oBossMissile);
		missileInstance.hspeed = -2}
	
		repeat(missile){
		missileInstance = instance_create_layer(x,y + irandom_range(-50,50),"Instances",oBossMissile);
		missileInstance.hspeed = 2}
		
		missile += 1
		if (missile > 10){missile = 10}
		salvoTimer = 0
		}
		
		// fire blast for 35 frames
		if(blastFlag==1 and salvoTimer > 100 and salvoTimer < 190){
			instance_create_layer(x,y+64,"frontInstances",oBossBlastsfx);
			if(!instance_exists(blast)){blast = instance_create_layer(x,y,"Instances",oBossBlast);}
			if (blast.y > (y+28)){blast = instance_create_layer(x,y + 64,"Instances",oBossBlast);}
			exit;
			}	
		

}


// BOB UP AND DOWN 
if (y > room_height/4){speed = -speed}
if (y < room_height/6 and speed < 0){speed = -speed}


// STALK PLAYER 
if (instance_exists(oPlayer)){hSpeed = 0.4}else{exit;}
playerPos = oPlayer.x
if (x > playerPos){
	x -= hSpeed}
if (x < playerPos){
	x += hSpeed}




if (y > room_height){instance_destroy()}