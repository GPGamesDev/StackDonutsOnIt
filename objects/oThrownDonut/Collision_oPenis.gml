/// @description Insert description here
// You can write your code in this editor
if(!catchable) exit;


if(speed > other.maxCatchSpeed){ // bounce
	catchable = false;
	var _attackAngle = point_direction(x,y,other.x,other.y-other.headOffset);
	direction += 180;
	speed *= 0.5;
	exit;
}

var _caughtDonut = instance_create_layer(other.x,other.y,"Instances",oCaughtDonut);

with(_caughtDonut){
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_speed = 0;
}

other.donutStack[other.donutCount] = _caughtDonut;
other.donutOffset[other.donutCount] = other.headOffset;
other.donutCount++

instance_destroy();