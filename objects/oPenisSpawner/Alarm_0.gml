/// @description Insert description here
// You can write your code in this editor

alarm_set(0,spawnTimer*game_get_speed(gamespeed_fps));

if(spawnCount == 0) exit;

var _spawnX = random(xMax-xMin)+xMin;
var _spawnY = random(yMax-yMin)+yMin;

instance_create_layer(_spawnX,_spawnY,"Instances",oPenis);

spawnCount -= 1;



