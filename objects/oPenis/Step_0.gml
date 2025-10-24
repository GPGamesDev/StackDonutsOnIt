/// @description Insert description here
// You can write your code in this editor

if(abs(x-targetX)<closeEnough && speed>0){
	speed = 0;
	alarm_set(0,moveTimer*game_get_speed(gamespeed_fps));

}

if(donutCount >= maxStack){
	instance_destroy();
}