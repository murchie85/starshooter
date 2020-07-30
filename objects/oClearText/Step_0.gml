
iterationNumber += 1;
if(iterationNumber<wait){exit}
	var l = layer_get_id("textLayer");
	var tileMap = layer_tilemap_get_id(l);
	tilemap_clear(tileMap,0)
	oGame.animationTextComplete = 1;
	instance_destroy()
	


