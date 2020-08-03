/// @description takes a list of numbers and writes them as letters 
letterTicker += 1;
lineLength    = array_length_1d(LineToWrite)


if(letterTicker/60 > 0.05){
	
	
	
	if(lineLength <59 and finished =0){

		if(LineToWrite[leterPosition] = -1){ 
			if(shiftxposition == 1){StartPositionX = originalStartPositionX - 16; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 2}	
			if(shiftxposition == 0){StartPositionX = originalStartPositionX - 16; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 1}	}

		letterIndex = LineToWrite[leterPosition]
		
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		myText.offsetX = offsetX
		letterTicker = 0;
	
		StartPositionX = StartPositionX + sprite_get_width(sLetters);
		// increment letter position counter
		if(leterPosition < lineLength-1 ){leterPosition +=1}
		else{finished = 1}

	}
	else if(lineLength<39 and finished =0){

		if(LineToWrite[leterPosition] = -1){ 
			if(shiftxposition == 1){StartPositionX = originalStartPositionX - 16; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 2}	
			if(shiftxposition == 0){StartPositionX = originalStartPositionX - 16; StartPositionY = StartPositionY + 2 * sprite_get_height(sLetters); shiftxposition = 1}	}

		letterIndex = LineToWrite[leterPosition]
	
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		myText.offsetX = offsetX
		letterTicker = 0;
	
		StartPositionX = StartPositionX  + sprite_get_width(sLetters);;
		if(leterPosition < lineLength-1 ){leterPosition +=1}
		else{finished = 1}
	}
	else if(lineLength<19 and finished =0){
		letterIndex = LineToWrite[leterPosition]
		myText = instance_create_layer(StartPositionX,StartPositionY,"textInstance", oLetters)
		myText.image_index = letterIndex
		myText.offsetX = offsetX
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
	
	
if(destroy_me =1){
	if(instance_exists(oLetters)){oLetters.destroy_me = 1; }
	instance_destroy()
	
	}


