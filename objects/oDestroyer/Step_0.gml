/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
direction = 270

// IF PLAYER DOENS'T EXIST EXIT
if (!instance_exists(oPlayer)){exit;}



// HIT BEHAVIOUR

if(hit==1){image_blend = make_colour_hsv(0, 125, c_white); 
	hitColorTimer += (1/60)
	if(hitColorTimer > 0.05){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.1){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.20){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.25){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.35){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.4){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.45){image_blend = make_colour_rgb(255,255,255);hit=0;hitColorTimer=0;}
}







// ATTACK BEHAVIOUR
if(shot>0){shotTimer += 1}

if (y-20 and shotTimer < 150){vspeed = 0.5}


// Initial Salvo
if(shot == 0 and y > room_height/8){
	firedBullet = instance_create_layer(x-20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-70,y,"Instances",oScoutRound)

	firedBullet = instance_create_layer(x+20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+70,y,"Instances",oScoutRound)

	
	
	shot +=1;
	show_debug_message(string(shot))
	
	}
	
	
if(shotTimer > 160 and shot ==1){
	firedBullet = instance_create_layer(x-20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-70,y,"Instances",oScoutRound)

	firedBullet = instance_create_layer(x+20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+70,y,"Instances",oScoutRound)


	shot +=1;
	show_debug_message(string(shot))
	
	}
if(shotTimer > 200 and shot ==2){
	firedBullet = instance_create_layer(x-20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-70,y,"Instances",oScoutRound)



	firedBullet = instance_create_layer(x+20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+70,y,"Instances",oScoutRound)


	shot +=1;
	show_debug_message(string(shot))
	}

if(shotTimer > 250){
	vspeed = 2
	
	if(shotTimer > 270 and shot==3){
	firedBullet = instance_create_layer(x-20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x-70,y,"Instances",oScoutRound)

	firedBullet = instance_create_layer(x+20,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+30,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+40,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+50,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+60,y,"Instances",oScoutRound)
	firedBullet = instance_create_layer(x+70,y,"Instances",oScoutRound)

		shot +=1;
		show_debug_message(string(shot))
		}
	
	exit;
}


// MOVEMENT BEHAVIOUR
speed = 1
// BOB UP AND DOWN 
if (y > room_height/4){vspeed = -vspeed}
if (y < room_height/6 and speed < 0){vspeed = -vspeed}


// STALK PLAYER HORIZONTALLY
if (instance_exists(oPlayer)){hSpeed = 0.4}else{exit;}
playerPos = oPlayer.x
if (x > playerPos){
	x -= hSpeed}
if (x < playerPos){
	x += hSpeed}




if (y > room_height){instance_destroy()}