/// @description Insert description here
// You can write your code in this editor
shader_set(shCaughtCutout);
var uv = sprite_get_uvs(sprite_index, image_index);
shader_set_uniform_f(_uniUV, uv[0], uv[1], uv[2], uv[3]);
draw_self();
shader_reset();