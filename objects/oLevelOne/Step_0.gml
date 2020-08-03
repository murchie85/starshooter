/// @description Game flow


if(room== rm_levelOne){
	game_timer += 1/room_speed
	if(lives <=0){room_goto(rm_gameover)};
	
	//letter = tilemap_get(tLetters,2,1)
	
	if(animationFlag = 0 and hard_Selected = 0){instance_create_layer(0,0,"Instances",oSMaiIntro); animationFlag =1}
	if(animationFlag = 0 and hard_Selected = 1){instance_create_layer(0,0,"Instances",oSMaiIntroHard); animationFlag =1}


	// debug
	if (gameStep = 0){
		 //instance_create_layer(x,y,"frontInstances",oPowerUpShield)

		//draw_sprite(sExplosionOne,-1,x,y)
		

	//instance_create_layer(0.9*room_width,-200,"Instances",oDestroyer)
	//instance_create_layer(room_width/2,0,"Instances",oPowerUpLaser)
	gameStep +=1;
	}
	
	
	
	// SPAWN scout
	if(gameStep = 1 and game_timer> 14){spawnedEnemy = instance_create_layer((0.2*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	
	// SPAWN scout
	if(gameStep = 2 and game_timer> 16){spawnedEnemy = instance_create_layer((0.3*room_width),0,"Instances",oScout);  spawnedEnemy.difficulty = 0}
	if(gameStep = 2 and game_timer> 16){spawnedEnemy = instance_create_layer((0.6*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	
	
	// SPAWN FREIGHTER
	if(gameStep = 3 and game_timer> 20){spawnedEnemy = instance_create_layer((0.8*room_width),0,"Instances",oScout); spawnedEnemy.difficulty = 1}
	if(gameStep = 3 and game_timer> 20){spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oFreighter); gameStep +=1; spawnedEnemy.difficulty = 0}

	// SPAWN thre3 scouts
	if(gameStep = 4 and game_timer> 25){spawnedEnemy = instance_create_layer((0.2*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 5 and game_timer> 27){spawnedEnemy = instance_create_layer((0.3*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 0}
	if(gameStep = 6 and game_timer> 29){spawnedEnemy = instance_create_layer((0.8*room_width),0,"Instances",oScout); gameStep +=1; spawnedEnemy.difficulty = 1}
		
	
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
		spawnedEnemy = instance_create_layer((0.9*room_width),0,"Instances",oScout);  gameStep +=1; spawnedEnemy.difficulty = 1
		}
		
		
	if(gameStep = 19 and game_timer> 63){
		spawnedEnemy = instance_create_layer((0.4*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 0
		spawnedEnemy = instance_create_layer((0.7*room_width),0,"Instances",oScout);   spawnedEnemy.difficulty = 1
		spawnedEnemy = instance_create_layer((0.5*room_width),0,"Instances",oFreighter);  gameStep +=1; spawnedEnemy.difficulty = 1
		}
		

	// ANIMATION INTERLUDE HEADS UP ROOKIE !
	if(animationFlag = 1 and game_timer> 69 ){instance_create_layer(0,0,"Instances",oSMaiShock); animationFlag =2}

		
	if(gameStep = 20 and game_timer> 77){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 0
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oStealth);
		
		gameStep +=1;
	}
			
	if(gameStep = 21 and game_timer> 80){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oStealth);
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 1
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oStealth);
		
		gameStep +=1;
	}	
		
		
	if(gameStep = 22 and game_timer> 83){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}		
		

	if(game_timer== 85 and gameStep = 23){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}		
		

	if(game_timer== 87 and gameStep = 24){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	
		



	
	// ANIMATION INTERLUDE 
	if(animationFlag = 2 and game_timer> 94 ){instance_create_layer(0,0,"Instances",osMaiGG); animationFlag =3}


	
	if(game_timer== 100 and gameStep = 25){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oFreighter);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oDestroyer);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	
		

	if(game_timer== 105 and gameStep = 26){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oSpinner);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oFrigate);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oStealth);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oFrigate);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	
		


	if(game_timer== 110 and gameStep = 27){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oFrigate);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oDestroyer);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.8*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	
		

	if(game_timer== 116 and gameStep = 28){
		spawnedEnemy= instance_create_layer(0.2*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.4*room_width,-20,"Instances",oScout);
		spawnedEnemy.difficulty = 2
		spawnedEnemy= instance_create_layer(0.6*room_width,-20,"Instances",oFrigate);
		spawnedEnemy.difficulty = 2
		gameStep +=1;
	}	


	if(game_timer== 120 and gameStep = 29){
		var xx = room_width/2;
		var yy = - room_height/5
		if (bossFlag = 0){instance_create_layer(xx,yy, "Instances", oBossOne);bossFlag = 1}
		gameStep +=1;
	}	
	
	if(boss_defeated== 1 and gameStep = 30 and animationFlag = 3)
	{
		instance_create_layer(0,0,"Instances",osMaiWD); animationFlag =4
		}
	


		
		
		
	// Spawn Power up not out a freighter
	if (game_timer > 115 and powerUp ==0){
		instance_create_layer(x,y,"frontInstances",oPowerUpShield)
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