/// @description Insert description here
// You can write your code in this editor
timer += 1
	if(lineCounter ==0){
		
		oGame.animationTextComplete = 0
		MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
		MAI.startAnimationComplete = 0
		lineCounter=1
		
	}
	
	// Well done
	if(lineCounter == 1 and MAI.startAnimationComplete=1 and timer/60 > 1 ){
		oGame.animationTextComplete = 0
		MAI.sprite_index = sMaiSmiling
		MAI.image_speed = 1;
		lineCounter = 2
		myText = instance_create_layer(0,0,"Instances",oWriteText)
		myText.passedVar = [23, 41, 49, 64, 0, 23, 31, 38, 38, 0, 30, 41, 40, 31, 64];
		myText.letterTotal = 15
		myText.startingXPos = 19
		myText.y = 4
	}
	
	if(lineCounter == 2 and oGame.animationTextComplete=1 and timer/60 > 3 ){
		oGame.animationTextComplete = 0
		MAI.sprite_index = sMaiSmiling
		MAI.image_speed = 1;
		lineCounter = 3
		myText = instance_create_layer(0,0,"Instances",oWriteText)
myText.passedVar = [45, 41, 66, 66, 66, 34, 41, 49, 0, 27, 28, 41, 47, 46];
myText.letterTotal = 14
		myText.startingXPos = 19
		myText.y = 6
	}
	
	if(lineCounter == 3 and oGame.animationTextComplete=1 and timer/60 > 4){
		oGame.animationTextComplete = 0
		MAI.sprite_index = sMaiSmiling
		MAI.image_speed = 1;
		lineCounter = 4
		myText = instance_create_layer(0,0,"Instances",oWriteText)
myText.passedVar = [46, 34, 27, 46, 0, 28, 31, 31, 44, 65];
myText.letterTotal = 10
		myText.startingXPos = 19
		myText.y = 8
	}
		
	// Clear Screen
	if( oGame.animationTextComplete == 1 and lineCounter == 4)
	{
		myText = instance_create_layer(0,0,"Instances",oClearText); 
		lineCounter +=1; 
		oGame.animationTextComplete = 0 
	}
	
	if(oGame.animationTextComplete ==1 and lineCounter == 5){
	   with(MAI){instance_destroy()}
	}