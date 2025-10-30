/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_yellow);
draw_text(10,10,"Time: " + string(max(0,floor(maxTime - (current_time - startTime)/1000))));

if(currentState == GAMESTATE.GAMEEND){
	draw_set_alpha(endScreenAlpha);
	draw_set_color(c_black);
	draw_rectangle(0,0,dispW,dispH,false);	
}

if(currentState == GAMESTATE.SCORESCREEN){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0,0,dispW,dispH,false);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(dispW*.4,dispH*.2,"Score:");
	draw_text(dispW*.6,dispH*.2,string(oScore.gameScore));
	
	draw_text(dispW*.4,dispH*.4,"High Score:");
	draw_text(dispW*.6,dispH*.4,string(highScore));
}