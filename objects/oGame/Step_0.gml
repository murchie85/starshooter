/// @description main loop

/// ROOM FLOW CONTROL
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_levelOne);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break
	
	}

}

/// GO TO DEV
if(keyboard_check_pressed(ord("D"))){
	switch(room){
		case rm_start:
			room_goto(rm_dev);
			break;
	}

}
/// GO TO HARD MODE
if(keyboard_check_pressed(ord("H"))){
	switch(room){
		case rm_start:
			HARD_MODE = 1
			room_goto(rm_levelOne);
			break;
	}

}

