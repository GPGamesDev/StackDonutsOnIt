/// @description Insert description here
// You can write your code in this editor

var _score = 100;
var _lastImage = donutStack[0].sprite_index;
var _matching = true;

for(var i = 0; i<array_length(donutStack); i++){
	if(donutStack[i] != noone){
		if(_matching && donutStack[i].sprite_index != _lastImage) _matching = false;
		_lastImage = donutStack[i].sprite_index;
		instance_destroy(donutStack[i]);
	}
}

if(oGameController.currentState = GAMESTATE.GAMEEND) exit;

if(_matching) _score = 300;

oScore.gameScore += _score;

var _newScore = instance_create_layer(x,y,"ScorePopUp",oScorePopUp);

_newScore.dispScore = _score;

oPenisSpawner.spawnCount += 1;