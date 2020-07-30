/// @description main loop
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break
	
	}

}

if(keyboard_check_pressed(vk_space)){
	switch(room){
		case rm_start:
			room_goto(rm_levelOne);
			break;
	}

}




if(room== rm_game){
	game_timer += 1/room_speed
	if(lives <=0){room_goto(rm_gameover)};
	
	//letter = tilemap_get(tLetters,2,1)

	
	/// MAI TALKING SEQUENCE
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
			myText.passedVar = [7, 41, 41, 30, 0, 39, 41, 44, 40, 35, 40, 33, 0, 44, 41, 41, 37, 35, 31];
			myText.letterTotal = 19
			myText.startingXPos = 19
			myText.y = 4
		}
		
		// THIS IS NOT AN EASY MISSION
		if(animationTextComplete ==1 and lineCounter == 1){
			lineCounter = 2
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [20, 34, 35, 45, 0, 35, 45, 0, 40, 41, 46, 0, 27, 40, 0, 31, 27, 45, 51];
			myText.letterTotal = 19
			myText.startingXPos = 19
			myText.y = 6
		}
		// MISSION
		if(animationTextComplete ==1 and lineCounter == 2){
			lineCounter = 3
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [39, 35, 45, 45, 35, 41, 40, 66];
			myText.letterTotal = 8
			myText.startingXPos = 19
			myText.y = 8
		}

		// Clear Screen
		if(animationTextComplete ==1 and lineCounter == 3){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter = 4; animationTextComplete = 0}
	
		// CLEAR OUT THIS 
		if(animationTextComplete ==1 and lineCounter == 4){
			show_debug_message("writing number four")
			lineCounter = 5
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [3, 38, 31, 27, 44, 0, 41, 47, 46, 0, 46, 34, 35, 45];
			myText.letterTotal = 14
			myText.startingXPos = 19
			myText.y = 4
		}
		
		//Sector
		if(animationTextComplete ==1 and lineCounter == 5){
			show_debug_message("writing number four")
			lineCounter = 6
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [45, 31, 29, 46, 41, 44, 66];
			myText.letterTotal = 7
			myText.startingXPos = 19
			myText.y = 6
		}
		
		// Clear Screen
		if(animationTextComplete ==1 and lineCounter == 6){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter +=1; animationTextComplete = 0}
	
	
		// Then beer is on me
		if(animationTextComplete ==1 and lineCounter == 7){
			lineCounter += 1
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [20, 34, 31, 40, 0, 28, 31, 31, 44, 0, 35, 45, 0, 41, 40, 0, 39, 31, 66];
			myText.letterTotal = 19
			myText.startingXPos = 19
			myText.y = 6
		}
		
		// SMILE AND CLEAR TEXT
		if(animationTextComplete ==1 and lineCounter == 8){myText = instance_create_layer(0,0,"Instances",oClearText); MAI.sprite_index = sMaiSmiling;  animationTextComplete = 0; lineCounter +=1}
	
	}	

	// PURGE ANIMATION 
	if(animationTextComplete == 1 and lineCounter == 9){
		animationTextComplete = 0;
		lineCounter +=1
	with(MAI){instance_destroy()}
	}






	// debug
	if (gameStep = 0){
	//instance_create_layer(0.2*room_width,-200,"Instances",oStealth)
	//instance_create_layer(0.4*room_width,-200,"Instances",oStealth)
	//instance_create_layer(0.6*room_width,-200,"Instances",oStealth)
	//instance_create_layer(0.8*room_width,-200,"Instances",oStealth)

	//instance_create_layer(0.9*room_width,-200,"Instances",oDestroyer)
	//instance_create_layer(room_width/2,0,"Instances",oPowerUpLaser)
	gameStep +=1;
	}
	
	
	
	// SPAWN scout
	if(gameStep = 1 and game_timer> 14){spawnedEnemy = instance_create_layer((0.2*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	
	// SPAWN scout
	if(gameStep = 2 and game_timer> 18){spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	
	// SPAWN FREIGHTER
	if(gameStep = 3 and game_timer> 20){spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oFreighter); gameStep +=1; spawnedEnemy.difficulty = 0}

	// SPAWN thre3 scouts
	if(gameStep = 4 and game_timer> 25){spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 5 and game_timer> 27){spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 6 and game_timer> 29){spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 1}
		
	
	// SPAWN Enemy
	if(gameStep = 7 and game_timer> 33){spawnedEnemy = instance_create_layer((0.3*room_width),-20,"Instances",oFrigate); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 8 and game_timer> 35){spawnedEnemy = instance_create_layer((0.6*room_width),-20,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 1}
    if(gameStep = 9 and game_timer> 33){spawnedEnemy = instance_create_layer((0.3*room_width),-20,"Instances",oDestroyer); gameStep +=1; spawnedEnemy.difficulty = 0}
	// SPAWN Enemy
	if(gameStep = 10 and game_timer> 39){spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 11 and game_timer> 40){spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 12 and game_timer> 41){spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 1}
	
	// SPAWN Enemy
	if(gameStep = 13 and game_timer> 45){spawnedEnemy = instance_create_layer((0.3*room_width),-20,"Instances",oFrigate); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 14 and game_timer> 47){spawnedEnemy = instance_create_layer((0.6*room_width),-20,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}

	
	// SPAWN three destroyer scouts
	if(gameStep = 15 and game_timer> 50){spawnedEnemy = instance_create_layer((0.4*room_width),0,"Instances",oDestroyer); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 16 and game_timer> 50){spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oDestroyer); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 17 and game_timer> 50){spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 1}
	
	if(gameStep = 18 and game_timer> 57){
		spawnedEnemy = instance_create_layer((0.4*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 0
		spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oSpinner); spawnedEnemy.difficulty = 0
		spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 1
		spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout);  gameStep +=1; spawnedEnemy.difficulty = 1
		}
		
		
	if(gameStep = 19 and game_timer> 63){
		spawnedEnemy = instance_create_layer((0.4*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 0
		spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 1
		spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oFreighter);  gameStep +=1; spawnedEnemy.difficulty = 1
		}
		

	// ANIMATION INTERLUDE 
	if(lineCounter ==10 and gameStep == 20 and game_timer> 69){
	
		if(animationFlag =1){
		MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
		MAI.image_speed= 15
		lineCounter+=1
		}}
	
		// HEADS UP ROOKIE
		if(lineCounter == 11 and MAI.sprite_index == sMaiTalking){
			lineCounter = 12
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [8, 31, 27, 30, 45, 0, 47, 42, 0, 44, 41, 41, 37, 35, 31, 64];
			myText.letterTotal = 16
			myText.startingXPos = 19
			myText.y = 4
		}
		
		// VIPERS INBOUND
		if(animationTextComplete ==1 and lineCounter == 12){
			lineCounter = 13
			animationTextComplete = 0
			myText = instance_create_layer(0,0,"Instances",oWriteText)
			myText.passedVar = [22, 35, 42, 31, 44, 45, 0, 35, 40, 28, 41, 47, 40, 30, 64];
			myText.letterTotal = 15
			myText.startingXPos = 19
			myText.y = 6
		}
	
		// Clear Screen
		if(animationTextComplete ==1 and lineCounter == 13){myText = instance_create_layer(0,0,"Instances",oClearText); lineCounter +=1; animationTextComplete = 0}
	
	
	
	if(animationTextComplete == 1 and lineCounter == 14){
		lineCounter +=1
	with(MAI){instance_destroy()}
	}

		
		
		
		
		
	if(gameStep = 20 and game_timer> 77){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 0
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		
		gameStep +=1;
	}
			
	if(gameStep = 21 and game_timer> 82){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		
		gameStep +=1;
	}	
		
		
	if(gameStep = 22 and game_timer> 85){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}		
		
	// REMOVING GAME STEPS FOR NOW 
	if(game_timer== 89 and gameStep = 23){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}		
		

	if(game_timer== 93 and gameStep = 24){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	
		
		
	// Spawn Power up
	if (game_timer > 120 and powerUp ==0){
		var xpos = choose(irandom_range(0,room_width));
		var ypos = -10
		layerNumber = instance_create_layer(xpos,ypos, "Instances", oPowerUpBullet);
		powerUp +=1
			}





	// create boss at 150
	if(game_timer > 480 and bossFlag == 0){
		var xx = choose(irandom_range(0,room_width));
		var yy = -10
		//choose(oEnemy1,oEnemyTwo)
		if (!instance_exists(oBossOne)){instance_create_layer(xx,yy, "Instances", oBossOne);}
		bossFlag = 1
	}

	}