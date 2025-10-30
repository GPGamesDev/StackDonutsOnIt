/// @description Insert description here
// You can write your code in this editor

switch currentState{
	
	case GAMESTATE.PLAYING:

	if(floor(maxTime - (current_time - startTime)/1000)<=0){
		currentState = GAMESTATE.GAMEEND;
		if(oScore.gameScore > highScore){
			ini_open("highScore.ini");
			ini_write_real("score","score",oScore.gameScore);
			ini_close();
			highScore = oScore.gameScore;
		}
	}
	break;
	
	case GAMESTATE.GAMEEND:
	
	endScreenAlpha += endScreenFadeRate;
	if(endScreenAlpha>=1){
		currentState = GAMESTATE.SCORESCREEN;
		instance_create_layer(room_width/2,room_height-10,"Instances",oResetButton);
	}
}

