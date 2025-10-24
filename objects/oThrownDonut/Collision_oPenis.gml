/// @description Insert description here
// You can write your code in this editor

var _caughtDonut = instance_create_layer(other.x,other.y,"Instances",oCaughtDonut);

with(_caughtDonut){
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_speed = 0;
}

other.donutStack[other.donutCount] = _caughtDonut;
other.donutCount++

instance_destroy();