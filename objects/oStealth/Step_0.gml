/// @description Insert description here
// You can write your code in this editor
enemyTimer += 1/room_speed

// IF PLAYER DOENS'T EXIST EXIT
if (!instance_exists(oPlayer)){exit;}

// SLOW DOWN 
if (y>0.5* stopLocation){
	vspeed -= 0.03
	
	// POINT TO ENEMY but stop pointing once attack run begins
	enemyDirection = point_direction(x, y, oPlayer.x, oPlayer.y)
	if (angleOveride = 0){
		if (sign(enemyDirection - image_angle) == 1){image_angle +=1}else{image_angle-=1}
	}
}



if(vspeed <0){vspeed=0.5}

if (y>stopLocation or enemyTimer > 1.5){
	
	shotTimer += 1
	// stop 
	if(shotTimer< 20){speed = 0}
	
	// EASY Home in on enemy
	if(difficulty == 0 and shotTimer > 20){
		// fix the direction not to make it too hard
		if (shotTimer > 22){direction =   image_angle; angleOveride = 1}
		
		// increment every 4 frames
		if(shotTimer > 25){speed +=1; shotTimer = 23}
		if(speed > 9){speed = 9}
	}


	// MEDIUM Home WITH HOMING
	if(difficulty == 1 and shotTimer > 20){
		// fix the direction not to make it too hard
		direction =   image_angle;
		
		// increment every 4 frames
		if(shotTimer > 25){speed +=1; shotTimer = 23}
		if(speed > 9){speed = 9}
	}

	// MEDIUM 
	if(difficulty == 2 and shotTimer > 20){
		// fix the direction not to make it too hard
		if (shotTimer > 22){direction =   image_angle; angleOveride = 1}
		
		// increment every 4 frames
		if(shotTimer > 25){speed +=1; shotTimer = 23}
		if(speed > 11){speed = 11}
	}
	
}

if (y > room_height){instance_destroy()}