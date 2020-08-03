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









// SLOWDOWN ONCE NEAR THE SCREEN
if (y-20 and shotTimer < 150){vspeed = 1}
	

// Initial Salvo
if(shot == 0 and y > room_height/7){
	firedBullet = instance_create_layer(x,y,"Instances",oScoutRound)
	firedBullet.direction = 270
	firedBullet = instance_create_layer(x,y,"Instances",oScoutRound)
	firedBullet.direction = 290
	firedBullet = instance_create_layer(x,y,"Instances",oScoutRound)
	firedBullet.direction = 250
	
	shot =1;
	show_debug_message(string(shot))
	
	}
	

// START TIMER
if(shot>0){shotTimer += 1}



if(shot==1 and (shotTimer/60) > 2){
	vspeed = 0;
	if(sprite_index!=sSpinnerAttack){sprite_index = sSpinnerDeploy;}
	if(animationComplete > 0){
		//reset timer, exit loop
		shotTimer = 0
		shot = 2
		
		}
}

if(shot==2){vspeed = 0;}

if(shotTimer > 80 and shot == 2){
	
	sprite_index = sSpinnerAttack;

	// move if recharging
	if(startMovingFlag = 1){
		vspeed = 1;
		if(y < room_height/8){vspeed =1} 
		if(y > room_height/2){vspeed = -1} 
	}
	else{vspeed = 0;}
	
	// DIFICULTY SETTINGS
	// take a break for 200 to recharge reset clock once finished
	if(difficulty == 0 and shotTimer > 290 ){
		startMovingFlag = 1;
		rechargeCounter -= 1
		if(rechargeCounter>1){exit;}
		if(rechargeCounter<1){rechargeCounter = 200; shotTimer=0}
	
	}
	if(difficulty == 1 and shotTimer > 100 ){
		startMovingFlag =1;
		speed = 1;
		rechargeCounter -= 1
		if(rechargeCounter>1){exit;}
		if(rechargeCounter<1){rechargeCounter = 200; shotTimer=0}
	
	}

	// FIRE THE SALVO
	// should shoot every 2 frames by degreee sep of 15
	startingfireAngle -= 15
	if (shotTimer > 1){
		firedBullet = instance_create_layer(x,y,"Instances",oScoutRound)
			
		if(startingfireAngle < 0){startingfireAngle = 360}	
	
		firedBullet.direction = startingfireAngle 
		}





}





if (y > room_height){instance_destroy()}