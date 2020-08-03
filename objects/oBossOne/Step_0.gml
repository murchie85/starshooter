/// @description Insert description here
// You can write your code in this editor
direction = 270
salvoTimer += 1
bossTimer += 1


// HIT BEHAVIOUR

if(hit==1){image_blend = make_colour_hsv(0, 125, c_red); 
	hitColorTimer += (1/60)
	if(hitColorTimer > 0.05){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.1){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.20){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.25){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.35){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.4){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.45){image_blend = make_colour_rgb(255,255,255);hit=0;hitColorTimer=0;}
}



//----------------just creating the instance once 

blast = instance_create_layer(x,y,"Instances",oBossBlast);
with(blast){instance_destroy()}



//-----------------player angle
if(instance_exists(oPlayer) ){playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y)}

//----------------MAIN TURRET DRAW
if(turretCreated < 1){
	instance_create_layer(x, y, "frontInstances", oBossTurret)
	turretCreated += 1
}
mainTurret = oBossTurret





//------------------BACK LEFT TURRET DRAW
smallTurret = instance_create_layer(x - (0.4* sprite_width), y -(0.1*sprite_height), "frontInstances", oBossSmallTurret)
smallTurret.image_angle = playerDirection
if(smallTurret.image_angle > 270){smallTurret.image_angle = 270}
//------------------FRONT LEFT TURRET
smallTurretThree = instance_create_layer(x - (0.35* sprite_width), y +(0.2*sprite_height), "frontInstances", oBossSmallTurret)
smallTurretThree.image_angle = playerDirection
if(smallTurretThree.image_angle > 270){smallTurretThree.image_angle = 270}

// dont fire earlier than 4 seconds
smallTurret.fire_command =0;
smallTurretThree.fire_command =0;

// ----------------------- LEFT TURRET FIRE 
if(salvoTimer/60 > 4){
	
	
if(playerDirection < 270){
	leftturretTimer +=1 
	if(leftturretTimer/60 > 3 and leftturretFlag = 0){
	smallTurret.fire_command = 1;
	smallTurretThree.fire_command = 1;
	leftturretFlag += 1 
	}
	if(leftturretTimer/60 > 3.3 and leftturretFlag = 1){
	smallTurret.fire_command = 1;
	smallTurretThree.fire_command = 1;
	leftturretFlag +=1
	}	
	if(leftturretTimer/60 > 3.5 and leftturretFlag = 2){
	smallTurret.fire_command = 1;
	smallTurretThree.fire_command = 1;
	leftturretTimer =0; leftturretFlag = 0
	}	
	
	
}
}




// BACK RIGHT TURRET DRAW
smallTurretTwo = instance_create_layer(x + (0.4* sprite_width), y -(0.1*sprite_height), "frontInstances", oBossSmallTurret)
smallTurretTwo.image_angle = playerDirection
if(smallTurretTwo.image_angle < 270){smallTurretTwo.image_angle = 270}

// FRONT RIGHT TURRET DRAW
smallTurretFour = instance_create_layer(x + (0.35* sprite_width), y +(0.2*sprite_height), "frontInstances", oBossSmallTurret)
smallTurretFour.image_angle = playerDirection
if(smallTurretFour.image_angle < 270){smallTurretFour.image_angle = 270}

// ----------------------- RIGHT TURRET FIRE 
if(salvoTimer/60 > 4){
	
	

if(playerDirection > 270){
	rightturretTimer +=1 
	if(rightturretTimer/60 > 3 and rightturretFlag = 0){
	smallTurretTwo.fire_command = 1;
	smallTurretFour.fire_command = 1;
	rightturretFlag += 1 
	}
	if(rightturretTimer/60 > 3.3 and rightturretFlag = 1){
	smallTurretTwo.fire_command = 1;
	smallTurretFour.fire_command = 1;
	rightturretFlag +=1
	}	
	if(rightturretTimer/60 > 3.5 and rightturretFlag = 2){
	smallTurretTwo.fire_command = 1;
	smallTurretFour.fire_command = 1;
	rightturretTimer =0; rightturretFlag = 0
	}	
	
	
}
}





//-----------------MISSILE SALVO
if (y > 0.15* room_height){
	missileTimer += 1

	if(missileTimer/60 >3){
		missileInstance = instance_create_layer(x,y,"Instances",oBossMissile);
		missileInstance.hspeed = -2
	
		missileInstance = instance_create_layer(x,y + 20,"Instances",oBossMissile);
		missileInstance.hspeed = -2
	
		missileInstance = instance_create_layer(x,y,"Instances",oBossMissile);
		missileInstance.hspeed = 2
	
		missileInstance = instance_create_layer(x,y + 20,"Instances",oBossMissile);
		missileInstance.hspeed = 2
		missileTimer = 0
	}
	
	

}



// -------------------MAIN CANNON
if(salvoTimer/60 > 3){
	oBossTurret.fireCommand = 1;

}
		



// BOB UP AND DOWN 
if (y > 0.4 * room_height and vspeed>0 ){vspeed = -vspeed}
if (y < 0.2 * room_height and vspeed < 0){vspeed = -vspeed}


// STALK PLAYER 
if (instance_exists(oPlayer)){hSpeed = 0.4}else{exit;}
playerPos = oPlayer.x
if (x > playerPos){
	x -= hSpeed}
if (x < playerPos){
	x += hSpeed}




if (y > room_height){instance_destroy()}