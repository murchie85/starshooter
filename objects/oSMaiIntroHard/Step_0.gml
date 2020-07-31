/// @description Insert description here
// You can write your code in this editor


	/// ONCE ONLY 
	if(animationFlag =0){
	MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
	animationFlag+=1
	}
	
	// SWITCHES MAI TO TALKING MODE 
	// USEFUL maiInstance = instance_find(MAI, instance_number(MAI) - 1)
	if (instance_exists(MAI)){ if(MAI.image_index == -1 and MAI.sprite_index = sMAIstart){MAI.sprite_index = sMaiTalking; characterTalking = 1}}
	
	if(characterTalking==1){
		
		// GOOD MORNING Rookie
		if(lineCounter == 0){
			lineCounter = 1
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [8, 27, 44, 30, 0, 39, 41, 30, 31, 0, 31, 34, 65];
			myText.letterTotal = 13
			myText.startingXPos = 19
			myText.y = 4
		}
		
		// THIS IS NOT AN EASY MISSION
		if(oGame.animationTextComplete ==1 and lineCounter == 1){
			lineCounter = 2
			oGame.animationTextComplete  = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [20, 34, 35, 45, 0, 35, 45, 0, 40, 41, 46, 0, 27, 40, 0, 31, 27, 45, 51];
			myText.letterTotal = 19
			myText.startingXPos = 19
			myText.y = 6
		}
		// MISSION
		if(oGame.animationTextComplete  ==1 and lineCounter == 2){
			lineCounter = 3
			oGame.animationTextComplete  = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [39, 35, 45, 45, 35, 41, 40, 66];
			myText.letterTotal = 8
			myText.startingXPos = 19
			myText.y = 8

		}

		// Clear Screen
		if(oGame.animationTextComplete ==1 and lineCounter == 3){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter = 4; oGame.animationTextComplete = 0}
	
		// CLEAR OUT THIS 
		if(oGame.animationTextComplete ==1 and lineCounter == 4){

			lineCounter = 5
			oGame.animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [3, 38, 31, 27, 44, 0, 41, 47, 46, 0, 46, 34, 35, 45];
			myText.letterTotal = 14
			myText.startingXPos = 19
			myText.y = 4
		}
		
		//Sector
		if(oGame.animationTextComplete ==1 and lineCounter == 5){
			show_debug_message("writing number four")
			lineCounter = 6
			oGame.animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [45, 31, 29, 46, 41, 44, 66];
			myText.letterTotal = 7
			myText.startingXPos = 19
			myText.y = 6
		}
		
		// Clear Screen
		if(oGame.animationTextComplete ==1 and lineCounter == 6){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter +=1; oGame.animationTextComplete = 0}
	
	
		// Then beer is on me
		if(oGame.animationTextComplete ==1 and lineCounter == 7){
			lineCounter += 1
			oGame.animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [20, 34, 31, 40, 0, 28, 31, 31, 44, 0, 35, 45, 0, 41, 40, 0, 39, 31, 66];
			myText.letterTotal = 19
			myText.startingXPos = 19
			myText.y = 6
		}
		
		// SMILE AND CLEAR TEXT
		if(oGame.animationTextComplete ==1 and lineCounter == 8){myText = instance_create_layer(0,0,"Instances",oClearText); MAI.sprite_index = sMaiSmiling;  oGame.animationTextComplete = 0; lineCounter +=1}
	
	}	

	// PURGE ANIMATION 
	if(oGame.animationTextComplete == 1 and lineCounter == 9){
		oGame.animationTextComplete = 0;
		lineCounter +=1
	with(MAI){instance_destroy()}
	instance_destroy()
	}

