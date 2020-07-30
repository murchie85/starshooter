iterationNumber += 1;


// Needs to be passed a string of numbers in passedVar
// needs to be passed starting x,y (set them) 
// needs to have letterTotalSet
if(iterationNumber>5){
	iterationNumber=0
	 
	
	var l = layer_get_id("textLayer");
	var tileMap = layer_tilemap_get_id(l);
	
	
	// CLEAR OUT LINE AT END OF SESSION AND DESTROY INSTANCE 
	if( letterCounter> (letterTotal-1)){
		myText = instance_create_layer(0,0,"Instances",oClearText)
		myText.passedVar = 0;
		myText.letterTotal = letterTotal;
		myText.startingXPos = startingXPos - letterCounter;
		myText.y = y
		instance_destroy();
		exit;
		
		}


	tilemap_set(tileMap, passedVar[letterCounter],startingXPos ,y);
	startingXPos += 1
	letterCounter += 1;

	
	
	
}


