/// @description asteroid spawn

if(room!= rm_levelOne){ exit;}

if (!instance_exists(oAsteroid)){
	var amount = irandom_range(1,4)
	repeat(amount){
	var xx = choose(irandom_range(0,room_width));
	var yy = irandom_range(-10,-220)
	instance_create_layer(xx,yy, "Instances", oAsteroid);
	}
	
	}


alarm[0] = 4*room_speed;

