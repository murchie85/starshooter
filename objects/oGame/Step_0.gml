/// @description main loop
// You can write your code in this editor

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

if(keyboard_check_pressed(ord("D"))){
	switch(room){
		case rm_start:
			room_goto(rm_dev);
			break;
	}

}

if(keyboard_check_pressed(ord("H"))){
	switch(room){
		case rm_start:
			HARD_MODE = 1
			room_goto(rm_levelOne);
			break;
	}

}

