/// @description stop image from repeating
if(sprite_index == sMAIstart){
	image_speed = 0
	image_index = -1
	animationEnd = 1;
}
if(sprite_index == sMaiTalking){
	image_speed = 1
	animationEnd = 0;
}