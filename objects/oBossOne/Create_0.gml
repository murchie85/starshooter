/// @description Insert description here
// You can write your code in this editor
bossHealth = 1000
if(!instance_exists(oPlayer)){instance_destroy()}
//if(oPlayer.powerLevel >3){bossHealth = 1000}

speed = 0.5
show_debug_message("boss Spawned ID : " + string(id))
bulletId = 999;
salvoTimer = 0;
blastFlag = 0;



bossTimer    = 0;
missileTimer = 0;
blastTimer   = 0;
turretCreated = 0;
blastDurationTimer =0;

leftturretTimer = 0
leftturretFlag = 0
rightturretTimer =0;
rightturretFlag=0;
hit=0;
hitColorTimer =0;