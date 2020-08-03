/// @description Insert description here
// You can write your code in this editor
bTimer = 0;
firstBackground  = layer_background_get_id("firstBackground")
secondBackground = layer_background_get_id("secondBackground")
thirdBackground  =  layer_background_get_id("thirdBackground")

layer_background_sprite(firstBackground, bWater);
layer_background_sprite(secondBackground, bGrass);
layer_background_sprite(thirdBackground, bDesert);


write_flag = 0;

write_event = 0;