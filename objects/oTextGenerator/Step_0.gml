/// @description takes a list of numbers and writes them as letters 
letterTicker += 1;
lineLength    = array_length_1d(LineToWrite)
show_debug_message(string(lineLength))


if(letterTicker/60 > 0.1){
	
	
	
	if(lineLength<59 and finished =0){
		if(leterPosition > 39){ 
			if(shiftxposition == 1){StartPositionX = originalStartPositionX; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 2}	}
		else if(leterPosition>19){ 
			if(shiftxposition == 0){StartPositionX = originalStartPositionX; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 1}	}
		

		letterIndex = LineToWrite[leterPosition]
	
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		letterTicker = 0;
	
		StartPositionX = StartPositionX + sprite_get_width(sLetters);
		// increment letter position counter
		if(leterPosition < lineLength-1 ){leterPosition +=1}
		else{finished = 1}

	}
	else if(lineLength<39 and finished =0){

		if(leterPosition>19){ 
			if(shiftxposition == 0){StartPositionX = originalStartPositionX; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 1}	}
		
		letterIndex = LineToWrite[leterPosition]
	
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		letterTicker = 0;
	
		StartPositionX = StartPositionX  + sprite_get_width(sLetters);;
		if(leterPosition < lineLength-1 ){leterPosition +=1}
		else{finished = 1}
	}

	else if(lineLength<19 and finished =0){
		letterIndex = LineToWrite[leterPosition]
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		letterTicker = 0;
	
		StartPositionX = StartPositionX + sprite_get_width(sLetters);;
		if(leterPosition < lineLength-1 ){leterPosition +=1}
		else{finished = 1}
	
	
}


}


if(finished ==1){
	finishTimer +=1
	if(finishTimer> display_duration){
		complete = 1
		oLetters.destroy_me = 1; 
		finished =2;
		}
}
	
	
if(destroy_me =1){instance_destroy()}


