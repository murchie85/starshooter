/// @description stop image from repeating
animationCounter += 1;
if(sprite_index == sZackStart){
	image_speed = 0
	image_index = -1
	startAnimationComplete = 1
	animationEnd = 1;
}
if(sprite_index == sZackSmiling){
	image_speed = 0
	image_index = -1
	if(animationCounter > 70){animationEnd = 1;}
}


if(sprite_index == sZackTalking){
	image_speed = 1
	animationEnd = 0;
}