
iterationNumber += 1;
if(iterationNumber<wait){exit}

// Needs to be passed a string of numbers in passedVar
// needs to be passed starting x,y (set them) 
// needs to have letterTotalSet

	 
	
	var l = layer_get_id("textLayer");
	var tileMap = layer_tilemap_get_id(l);
	
	
	// CLEAR OUT LINE AT END OF SESSION AND DESTROY INSTANCE 
	if( letterCounter> (letterTotal-1)){
		
		instance_destroy();
		exit;
		
		}


	tilemap_set(tileMap, 0,startingXPos ,y);
	startingXPos += 1
	letterCounter += 1;

	
	


