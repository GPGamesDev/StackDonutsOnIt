/// @description Insert description here
// You can write your code in this editor

if(oGameController.currentState != GAMESTATE.PLAYING) exit;

if(mouse_check_button(mb_left)){
	throwing = true;
	currentPower = min(currentPower+powerStep,maxPower);
}

if(mouse_check_button_released(mb_left)){
	throwing = false;
	var _newDonut = instance_create_layer(x,y,"ThrownDonuts",donut);
	with(_newDonut){
		speed = other.throwSpeed*other.currentPower/other.maxPower;
		direction = point_direction(x,y,mouse_x,mouse_y);
		sprite_index = other.sprite_index;
	}
	if(random(1)>0.5){
		sprite_index = sDonut;
	}
	else{
		sprite_index = sDonutBlue;
	}
	currentPower = 0;
}
