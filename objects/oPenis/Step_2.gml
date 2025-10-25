/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i<array_length(donutStack); i++){
	if(donutStack[i] != noone){
		donutStack[i].x = x;
		donutStack[i].y = y-max(i*stackHeight,donutOffset[i]);
		donutOffset[i] -= donutDropSpeed;
		donutStack[i].depth = depth-i*stackHeight-1;
	}
}