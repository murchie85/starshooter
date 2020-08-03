/// @description Insert description here
// You can write your code in this editor

image_angle = direction
missileTime +=1 

if (missileTime > 45){
	
	// STALK PLAYER 
	if (instance_exists(oPlayer)){speed = 3}else{exit;}
	playerPos = oPlayer.x
	// if to the right of the player
	if (x > playerPos){
		
		if (direction < 220){exit;}
		direction -= 1
		}
	// if to the left of the player
	else if (x < playerPos){
		// if facing to the left or up swing in
		if (direction > 330){exit;}
		direction += 1
		
		}
	

	
}

if (y > room_height){instance_destroy()}