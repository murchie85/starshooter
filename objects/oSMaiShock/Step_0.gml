	animationTimer +=1
	if(lineCounter ==0 ){
	
		if(lineCounter =0){
		MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oAMaiShock);
		lineCounter+=1
		}}


		
		if(lineCounter == 1 and animationTimer >80){
			animationTimer += 1
			startCompleted = 1;
		
			lineCounter = 2
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [8, 31, 27, 30, 45, 0, 47, 42, 0, 44, 41, 41, 37, 35, 31, 64];
			myText.letterTotal = 16
			myText.startingXPos = 19
			myText.y = 4
		}
		
		// VIPERS INBOUND
		if(oGame.animationTextComplete ==1 and lineCounter == 2){
			lineCounter = 3
			oGame.animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [22, 35, 42, 31, 44, 45, 0, 35, 40, 28, 41, 47, 40, 30, 64];
			myText.letterTotal = 15
			myText.startingXPos = 19
			myText.y = 6
		}
	
		// Clear Screen
		if(oGame.animationTextComplete ==1 and lineCounter == 3){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter +=1; oGame.animationTextComplete = 0}
	
	
	
	if(oGame.animationTextComplete == 1 and lineCounter == 4){
		lineCounter +=1
	with(MAI){instance_destroy()}
	instance_destroy()
	}

	