/// @description Insert description here
// You can write your code in this editor
bTimer += 1;

//if(bTimer > 30){layer_background_sprite(firstBackground, bDummy);}
//if(bTimer > 40){layer_background_sprite(firstBackground, bDesert);}

//show_debug_message()
//layer_hspeed("Background",3);


if(layer_get_y("firstBackground") > 800){
layer_background_sprite(firstBackground, bDummy);
}

if(layer_get_y("firstBackground") > 850){
	layer_y("firstBackground",-1700)
}




if(layer_get_y("secondBackground") > 850){
	layer_y("secondBackground",-1700)
}
if(layer_get_y("thirdBackground") > 850){
	layer_y("thirdBackground",-1700)
}



// Shield 
if(write_event=0){
 instance_create_layer(x,y,"frontInstances",oPowerUpShield)

 write_event =1
}