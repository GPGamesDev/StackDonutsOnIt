/// @description Insert description here
// You can write your code in this editor

maxTime = 30; //seconds

startTime = current_time;

enum GAMESTATE{
	PLAYING,
	GAMEEND,
	SCORESCREEN,
}

currentState = GAMESTATE.PLAYING;

dispW = display_get_gui_width();
dispH = display_get_height();

endScreenAlpha = 0;
endScreenFadeRate = .05;

ini_open("highScore.ini");
highScore = ini_read_real("score", "score",0);
ini_close();