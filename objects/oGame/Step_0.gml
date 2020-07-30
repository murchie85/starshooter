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





if(room== rm_game){
	game_timer += 1/room_speed
	if(lives <=0){room_goto(rm_gameover)};
	
	//letter = tilemap_get(tLetters,2,1)

	
	
	// MAI INTRO 
	if(animationFlag =0){
	//instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMaiIntro);
	MAI = instance_create_layer(camera_get_view_x(view_camera[0]),room_height-300, "frontInstances", oMai);
	animationFlag+=1
	}
	
	// TALKING SEQUENCE
	maiInstance = instance_find(MAI, instance_number(MAI) - 1)
	if (MAI.image_index == -1){MAI.sprite_index = sMaiTalking;
		myText = instance_create_layer(0,0,"Instances",oWriteText)
		myText.passedVar = [7 ,40,40,29,0,37,46,28,36];
		myText.letterTotal = 9;
		myText.startingXPos = 19
		myText.y = 4	
		
		}
	
	
	
	if(game_timer > 13.5){
	with(oMaiIntro){instance_destroy()}
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
		
		
	if(gameStep = 19 and game_timer> 70){
		spawnedEnemy = instance_create_layer((0.4*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 0
		spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 1
		spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oFreighter);  gameStep +=1; spawnedEnemy.difficulty = 1
		}
		
	if(gameStep = 20 and game_timer> 75){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 0
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		
		gameStep +=1;
	}
			
	if(gameStep = 21 and game_timer> 77){
		spawnedEnemy= instance_create_layer(0.2*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.4*room_width,-200,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-200,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.8*room_width,-200,"Instances",oStealth);
		
		gameStep +=1;
	}	
		
		
	if(gameStep = 22 and game_timer> 80){
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
	if(game_timer== 84){
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
		

	if(game_timer== 86){
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