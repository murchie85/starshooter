/// @description Insert description here
// You can write your code in this editor
enemyTimer += 1/room_speed

// IF PLAYER DOENS'T EXIST EXIT
if (!instance_exists(oPlayer)){exit;}

// SLOW DOWN 
if (y>0.5* stopLocation){
	vspeed -= 0.03
	
	// POINT TO ENEMY
	if (angleOveride != 1){
		enemyDirection = point_direction(x, y, oPlayer.x, oPlayer.y)
		if (sign(enemyDirection - image_angle) == 1){image_angle +=1}else{image_angle-=1}
	}
}
if(vspeed <0){vspeed=0.5}

if (y>stopLocation or enemyTimer > 1.5){
	
	vspeed=0
	shotTimer += 1
	
	// EASY 
	if(difficulty == 0 and shotTimer > 20){
		// ONE SHOT ONLY
		if (shot ==0){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound); shot += 1}
	
		// EXIT
		if(shotTimer > 80){
			angleOveride = 1;
			vspeed = 4
			if(x>(room_width/2)){
				x += 1
				if(image_angle > 300){exit}
				image_angle += 0.5
			}
			else {
				x -= 1;
				if(image_angle < 220){exit}
				image_angle-=0.5}
		}
	}

	// MEDIUM
	if(difficulty == 1 and shotTimer > 20){
		// FIRST SALVO
		if (shot ==0){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound);shot += 1;}
		// SECOND SALVO
		if (shotTimer > 160 and shot == 1){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound); shot+=1  }
		
		// EXIT
		if(shotTimer > 220){
			vspeed = 4
			if(image_angle > 270){image_angle-=1} else {image_angle+=1}
		}
	}
		
	// HARD
	if(difficulty == 2 and shotTimer > 20){
		// FIRST SALVO
		if (shot ==0){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound);shot += 1;}
		// SECOND SALVO
		if (shotTimer > 80 and shot == 1){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound); shot+=1  }
		// THIRD SALVO
		if (shotTimer > 160 and shot == 2){firedBullet = instance_create_layer(x,y,"Instances",oScoutRound); shot+=1  }
		
		// EXIT
		if(shotTimer > 220){
			vspeed = 4
			if(sign((x - oPlayer.x)) == 1){ x-=1} else{x+=1}
			if(image_angle > 270){image_angle-=1} else {image_angle+=1}
		}
	}
	
	
}

if (y > room_height){instance_destroy()}