/// @description Insert description here
// You can write your code in this editor

killTimer = 5;
alarm_set(0,killTimer*game_get_speed(gamespeed_fps));

speedDecay = 0.95;
minCatchSpeed = 5;

catchable = true;

maxHeight = 100;
height = maxHeight;