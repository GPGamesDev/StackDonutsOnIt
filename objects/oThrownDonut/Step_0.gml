/// @description Insert description here
// You can write your code in this editor

speed *= speedDecay;

image_speed = min(1, speed/minCatchSpeed)
if(catchable && speed<minCatchSpeed){
	catchable = false;
}

height = maxHeight*speed/oDonutThrower.maxPower;