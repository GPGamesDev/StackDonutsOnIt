/// @description Insert description here
// You can write your code in this editor

homeX = x;
homeY = y;

wanderRadius = 250;

walkSpeed = 5;
xSpeed = 0;
ySpeed = 0;
closeEnough = 5;

moveTimer = 2;
alarm_set(0,moveTimer*game_get_speed(gamespeed_fps));

targetX = x;
targetY = y;

donutStack = [noone, noone, noone];
donutOffset = [0,0,0];
donutCount = 0;
stackHeight = 10;
maxStack = 4;

maxCatchSpeed = 25;

headOffset = 40;
donutDropSpeed = 1;