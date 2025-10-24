/// @description Insert description here
// You can write your code in this editor

//Pick New Target

var _newAngle = random(2*pi);
var _newRadius = sqrt(random(1))*wanderRadius;

targetX = _newRadius*cos(_newAngle)+homeX;
targetY = _newRadius*sin(_newAngle)+homeY;

targetX = clamp(targetX,200,room_width-100);
targetY = clamp(targetY,sprite_get_height(sprite_index), room_height-50);

direction = point_direction(x,y,targetX,targetY);
speed = walkSpeed;

