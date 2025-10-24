/// @description Insert description here
// You can write your code in this editor

y-=riseRate;

if(abs(y-startY)>riseLimit){
	instance_destroy();
}