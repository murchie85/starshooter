/// @description Insert description here
// You can write your code in this editor
	if(lineCounter ==0){
		MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
		lineCounter=1
		MAI.image_speed = 3
		show_debug_message("Stealth part done ")
		
	}
	
	// Good Job
	if(lineCounter == 1 and oMai.startAnimationComplete=1 ){
		oGame.animationTextComplete = 0
		MAI.sprite_index = sMaiSmiling
		lineCounter = 2
		myText = instance_create_layer(0,0,"Instances",oWriteText)
		myText.passedVar = [7, 41, 41, 30, 0, 36, 41, 28, 64];
		myText.letterTotal = 9
		myText.startingXPos = 19
		myText.y = 4
	}
		
	// Clear Screen
	if( oGame.animationTextComplete == 1 and lineCounter == 2)
	{
		myText = instance_create_layer(0,0,"Instances",oClearText); 
		lineCounter +=1; 
		oGame.animationTextComplete = 0 
	}
	
	if(oGame.animationTextComplete ==1 and lineCounter == 3){
	   with(MAI){instance_destroy()}
	}