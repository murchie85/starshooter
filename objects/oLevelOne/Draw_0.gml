/// @description draw score
// You can write your code in this editor


switch(room){
	case rm_levelOne:
draw_text(camera_get_view_x(view_camera[0]) + 20,camera_get_view_y(view_camera[0]) + 20, "SCORE: " + string(score));
draw_text(camera_get_view_x(view_camera[0]) +20,camera_get_view_y(view_camera[0]) +40, "LIVES: " + string(lives));
draw_text(camera_get_view_x(view_camera[0]) +20,camera_get_view_y(view_camera[0]) +60, "Game Time: " + string(game_timer));
	break;
	
	
	// ------------
	// START MENU 
	// ------------
	case rm_start:
	draw_set_halign(fa_center)
	var c = c_blue;
	draw_text_transformed_color(
	
		room_width/2,room_height/5, "STRATO FIGHTER", 2, 2, 0, c,c,c,c,1
	
	);
	draw_text(
		room_width/2, room_height/2, 
@"Good luck hot shot!

ARROW KEYS: MOVE
SPACE: SHOOT

COLLECT BONUS ITEMS TO POWER UP 

PRESS L FOR LEVEL 1

>> PRESS ENTER TO START << "

	);
	
	draw_text(
		room_width/2, room_height/2, 
@"Good luck hot shot!

ARROW KEYS: MOVE
SPACE: SHOOT

COLLECT BONUS ITEMS TO POWER UP 

PRESS L FOR LEVEL 1

>> PRESS ENTER TO START << "

	);
	draw_set_halign(fa_left)
	break;









	// ------------
	// WIN MENU 
	// ------------
	
	case rm_win:
	draw_set_halign(fa_center)
	var c = c_lime;
	draw_text_transformed_color(
	
		room_width/2,room_height/4 , "CONGRATULATIONS", 2, 2, 0, c,c,c,c,1);
	draw_text(
		room_width/2, room_height/2, "PRESS ENTER TO RESTART"

	);
	draw_set_halign(fa_left)
	
	break;
	
	// ------------
	// GAMEOVER MENU 
	// ------------
	case rm_gameover:
	draw_set_halign(fa_center)
	var c = c_red;
	draw_text_transformed_color(
	
		room_width/2,room_height/4 , "GAME OVER", 2, 2, 0, c,c,c,c,1);
	draw_text(
		room_width/2, room_height/3, "FINAL SCORE: " + string(score));
	draw_text( 
		room_width/2, room_height/2, "PRESS ENTER TO RESTART") 
	draw_set_halign(fa_left)
	
	break; 
 }