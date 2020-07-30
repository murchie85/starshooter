/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(oPlayer)){exit;}

// HIT BEHAVIOUR

if(hit==1){image_blend = make_colour_hsv(0, 125, c_white); 
	hitColorTimer += (1/60)
	if(hitColorTimer > 0.05){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.1){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.15){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.2){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.25){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.3){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.35){image_blend = make_colour_rgb(255,255,255);hit=0;hitColorTimer=0;}
}


// ATTACK BEHAVIOUR
shot_timer += 1
if(y> 50 and shot == 0){
	vspeed = 0.8
	firedBullet = instance_create_layer(x-35,y,"Instances",oEnemyBullet)
	
	firedBullet.direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	shot +=1;}
	
if(shot_timer> 100 and shot == 1){
	firedBullet = instance_create_layer(x+35,y,"Instances",oEnemyBullet)
	
	firedBullet.direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	shot +=1;}
		
if(shot_timer> 200 and shot == 2){
	firedBullet = instance_create_layer(x-35,y,"Instances",oEnemyBullet)
	
	firedBullet.direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	shot +=1;}
	
if(shot_timer> 300 and shot == 3){
	firedBullet = instance_create_layer(x+35,y,"Instances",oEnemyBullet)
	
	firedBullet.direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	shot +=1;}