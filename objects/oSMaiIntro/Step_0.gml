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
		
		// Write Letters 
		if(write_event =0 ){
			// GOOD MORNING ROOKIE THIS IS NOT AN EASY MISSION
		 MAITEXT = instance_create_layer(x,y,"textInstance",oTextGeneratorDynamic)
		 MAITEXT.LineToWrite = [6, 40, 40, 29, 67, 38, 40, 43, 39, 34, 39, 32, 67, 43, 40, 40, 36, 34, 30, -1, 19, 33, 34, 44, 67, 34, 44, 67, 39, 40, 45, 67, 26, 39, 67, 30, 26, 44, 50, -1, 38, 34, 44, 44, 34, 40, 39, 65];
		 MAITEXT.StartPositionY = MAI.y - 0.3* sprite_get_height(sMAIstart)
		 MAITEXT.offsetX = 0.4 * room_width;
		 write_event =1
		}
		// WAIT UNTIL TEXT IS FINISHED then issue command to destroy textgenerator instance
		if(write_event =1){if(MAITEXT.finished ==2){MAITEXT.destroy_me=1; write_event =2}}
		if(write_event =2){
		 MAITEXTTWO = instance_create_layer(x,y,"textInstance",oTextGeneratorDynamic)
		 MAITEXTTWO.LineToWrite = [2, 37, 30, 26, 43, 67, 40, 46, 45, 67, 45, 33, 34, 44, -1, 44, 30, 28, 45, 40, 43, 65];
		 MAITEXTTWO.StartPositionY = MAI.y - 0.3* sprite_get_height(sMAIstart)
		 MAITEXTTWO.offsetX = 0.4 * room_width;
		 
		 write_event =3
		}
		// WAIT UNTIL TEXT IS FINISHED then issue command to destroy textgenerator instance
		if(write_event =3){if(MAITEXTTWO.finished ==2){MAITEXTTWO.destroy_me=1; write_event =4}}
		if(write_event =4){
		 MAITEXTTHREE = instance_create_layer(x,y,"textInstance",oTextGeneratorDynamic)
		 MAITEXTTHREE.LineToWrite = [19, 33, 30, 39, 67, 27, 30, 30, 43, 67, 34, 44, 67, 40, 39, 67, 38, 30, 65];
		 MAITEXTTHREE.StartPositionY = MAI.y - 0.3* sprite_get_height(sMAIstart)
		 MAITEXTTHREE.offsetX = 0.4 * room_width;
		 
		 write_event =5
		}
		
		// SMILE AND CLEAR TEXT
		if(write_event =5 and MAITEXTTHREE.finished ==1 and lineCounter == 0){ MAI.sprite_index = sMaiSmiling; write_event +=1 }
		if(write_event =6 and MAITEXTTHREE.finished ==2){MAITEXTTHREE.destroy_me=1; lineCounter +=1 characterTalking +=1;}


}	

	// PURGE ANIMATION 
	if(lineCounter == 1){
		oGame.animationTextComplete = 0;
		lineCounter +=1
	with(MAI){instance_destroy()}
	instance_destroy()
	}

