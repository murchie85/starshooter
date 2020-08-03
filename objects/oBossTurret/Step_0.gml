/// @description Insert description here
// You can write your code in this editor
//if(destroyMe == 1){instance_destroy()}
if(!instance_exists(oBossOne)){ instance_destroy(); exit; }

if(instance_exists(oPlayer)){playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y)}

x = oBossOne.x
y = oBossOne.y + sprite_height
turretTrackingRate +=1;

if(turretTrackingRate>5){
	if(image_angle      > playerDirection){image_angle = image_angle - 1}
	else if(image_angle < playerDirection){image_angle = image_angle + 1 }
	turretTrackingRate =0
}

direction = image_angle





		
//blastDurationTimer += 1
//if(blastDurationTimer>3){blastFlag =+ 1; oBossTurret.fireCommand = 1; blastDurationTimer=0;}
//if(blastTimer/60 > 6 and blastFlag > 6){blastFlag = 0;oBossTurret.fireCommand = 0;blastTimer = 0;}

	


if(fireCommand = 1){
	show_debug_message("Firing")
	blastTimer += 1;
	if(blastTimer/60 > 2){
		blastDurationTimer+=1
		
		if(blastDurationTimer>1){
			blast = instance_create_layer(x,y + (0.7* sprite_height),"frontInstances",oBossBlast);
			blast.direction = direction
			blast.image_angle = direction - 90
			blastDurationTimer =0
		}
		
		if(blastTimer/60>4){blastTimer = 0}
		
	}
	
		
		
}