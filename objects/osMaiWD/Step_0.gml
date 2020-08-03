/// @description Insert description here
// You can write your code in this editor


	/// ONCE ONLY 
	if(animationFlag =0){
	MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
	animationFlag+=1
	}
	
	// SWITCHES MAI TO TALKING MODE 
	// USEFUL maiInstance = instance_find(MAI, instance_number(MAI) - 1)
	if (instance_exists(MAI)){ if(MAI.image_index == -1 and MAI.sprite_index = sMAIstart){MAI.sprite_index = sMaiSmiling; characterTalking = 1}}
	
	if(characterTalking==1){
		
		// Write Letters 
		if(write_event =0 ){
			// GOOD JOB!
		 MAITEXT = instance_create_layer(x,y,"textInstance",oTextGeneratorDynamic)
		 MAITEXT.LineToWrite = [22, 40, 48, 63, 67, 22, 30, 37, 37, 67, 3, 40, 39, 30, 63, -1, 18, 40, 65, 65, 65, 33, 40, 48, 67, 26, 27, 40, 46, 45, -1, 45, 33, 26, 45, 67, 27, 30, 30, 43, 64];
		 MAITEXT.StartPositionY =  0.3* sprite_get_height(sMAIstart)
		 MAITEXT.offsetX = 0.4 * room_width;
		 write_event =1
		}
		// WAIT UNTIL TEXT IS FINISHED then issue command to destroy textgenerator instance
		if(write_event =1){if(MAITEXT.finished ==2){MAITEXT.destroy_me=1; write_event =2}}


		// WAIT UNTIL TEXT IS CLEARED
		if(write_event =2 )
		{timer +=1;
		if(timer/60 > 1){lineCounter +=1 characterTalking +=1;}
		}
		
		
		


	}	

	// PURGE ANIMATION 
	if(lineCounter == 1){
		oGame.animationTextComplete = 0;
		lineCounter +=1
	with(MAI){instance_destroy()}
	instance_destroy()
	}

