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



// Write Letters 
if(write_event=0){
 instance_create_layer(x,y,"Instances",oTextGeneratorDynamic)
 oTextGeneratorDynamic.LineToWrite =[7, 30, 37, 37, 40, 67, 17, 40, 40, 36, 34, 30, -1, 8, 45, 44, 67, 45, 34, 38, 30, 67, 45, 40, 67, 32, 30, 45, 67, 50, 40, 46, 43, 67, 33, 30, 26, 29, -1, 34, 39, 67, 45, 33, 30, 67, 32, 26, 38, 30];
 write_event =1
}