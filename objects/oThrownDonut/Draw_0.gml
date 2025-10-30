/// @description Insert description here
// You can write your code in this editor

shader_set(shDropShadow);
draw_sprite(sprite_index,image_index,x,y+height);
shader_reset();

draw_self();