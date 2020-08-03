/// @description Insert description here
// You can write your code in this editor


key_left  = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up    = keyboard_check(vk_up);
key_down  = keyboard_check(vk_down);
key_space_held = keyboard_check(vk_space);
key_space = keyboard_check_pressed(vk_space);



// horizontal movement
var hMove = key_right - key_left;
hsp = hMove * movementSpeed;
x += hsp;

// vertical movement
var vMove =  key_down - key_up;
vsp = vMove * movementSpeed;
y += vsp;

 
// Shoot

if (key_space_held && powerLevel == 0 && activeWeapon == 1){
	bullet_timer += 1;
	if (bullet_timer > 8){
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.direction = 90;
		bullet_timer = 0
	}
}

// POWERUP DOUBLE SHOT
if (key_space_held && powerLevel == 1 && activeWeapon == 1){
	bullet_timer += 1;
	if (bullet_timer > 10){
		var bullet = instance_create_layer(x+10,y,"Instances",oBullet);
		bullet.direction = 90;
		var bullet = instance_create_layer(x-10,y,"Instances",oBullet);
		bullet.direction = 90;
		bullet_timer = 0
	}
}

// POWERUP TRIPLE SHOT
if (key_space_held && powerLevel = 2 && activeWeapon == 1){
	bullet_timer += 1;
	if (bullet_timer > 10){
		
		var bullet = instance_create_layer(x+10,y,"Instances",oBullet);
		bullet.direction = 80;
		
		var bullet = instance_create_layer(x-10,y,"Instances",oBullet);
		bullet.direction = 100;
		
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.direction = 90;
		
		bullet_timer = 0
	}
}

// POWERUP TRIPPLE FAST SHOT
if (key_space_held && powerLevel >= 3 && activeWeapon == 1){
	bullet_timer += 1;
	if (bullet_timer > 5){
		
		var bullet = instance_create_layer(x+10,y,"Instances",oBullet);
		bullet.direction = 80;
		
		var bullet = instance_create_layer(x-10,y,"Instances",oBullet);
		bullet.direction = 100;
		
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.direction = 90;
		
		bullet_timer = 0
	}
}

if(shield =1){
	
instance_create_layer(x,y,"frontInstances",oShield)
shield = 0;
	
}





/* TOO FAST
// POWERUP TRIPPLE FAST SHOT
if (key_space_held && powerLevel >= 4 && activeWeapon == 1){
	bullet_timer += 1;
	if (bullet_timer > 3){
		
		var bullet = instance_create_layer(x+10,y,"Instances",oBullet);
		bullet.direction = 80;
		
		var bullet = instance_create_layer(x-10,y,"Instances",oBullet);
		bullet.direction = 100;
		
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.direction = 90;
		
		bullet_timer = 0
	}
}
*/

// POWERUP LASER SHOT
if (key_space_held && laserPowerLevel >= 1 && activeWeapon == 2){
	bullet_timer += 1;
	if (bullet_timer > 1){
		var bullet = instance_create_layer(x,y,"Instances",oLaser);
		bullet.direction = 90;
		bullet_timer = 0
	}
}


// boundary restrictions
if (x > room_width-4){x=room_width-4}
if (x < 0+4){x=4}

if (y > room_height-15){y=room_height-15}
if (y < 0+4){y=4}


// ANIMATION 

if (hsp < 0)
{
	sprite_index = sPlayerLeft;
	if !keyboard_check_pressed(vk_left){image_index=-1}

}
else if (hsp > 0)
{
	sprite_index = sPlayerRight;
	if !keyboard_check_pressed(vk_right){image_index=-1}

}
else if (hsp = 0){
	sprite_index = sPlayer
	image_speed = 1
}


// DEBUG 
//show_debug_message("MY POSITION" + string(x))