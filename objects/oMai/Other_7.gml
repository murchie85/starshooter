/// @description stop image from repeating
animationCounter += 1;
if(sprite_index == sMAIstart){
	image_speed = 0
	image_index = -1
	startAnimationComplete = 1
	animationEnd = 1;
}
if(sprite_index == sMaiSmiling){
	image_speed = 0
	image_index = -1
	if(animationCounter > 70){animationEnd = 1;}
}


if(sprite_index == sMaiTalking){
	image_speed = 1
	animationEnd = 0;
}