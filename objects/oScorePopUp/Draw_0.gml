/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_color(textColorList[textColor]);

var _scale = (dispScore/100 - 1) * .25 + 1;

draw_text_transformed(x,y,string(dispScore),_scale,_scale,0);