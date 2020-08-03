/// @description Follow player
if(instance_exists(oPlayer)){x=oPlayer.x}
if(instance_exists(oPlayer)){y=oPlayer.y}

timer +=1;
//if(timer/60 =1){HIT=1}




if(HIT==1){image_blend = make_colour_hsv(0, 125, c_white); 
	hitColorTimer += (1/60)
	if(hitColorTimer > 0.05){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.1){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.20){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.25){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.35){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.4){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.45){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.50){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.60){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.65){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.75){image_blend = make_colour_rgb(255,255,255);}
	if(hitColorTimer > 0.80){image_blend = make_colour_hsv(0, 125, c_white);}
	if(hitColorTimer > 0.85){image_blend = make_colour_rgb(255,255,255);HIT=0;hitColorTimer=0;}
}

