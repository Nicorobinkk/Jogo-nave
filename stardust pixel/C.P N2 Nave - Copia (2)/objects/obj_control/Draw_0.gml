/// @description Insert description here
// You can write your code in this editor


draw_set_color(color);
draw_set_font(f_gameover);

draw_sprite_ext(spr_pontos, 1, 150, y+10, 7, 7, 0, c_white, 1);
draw_sprite_ext(spr_level, 1, 175, y+80, 7, 7, 0, c_white, 1);

draw_text(250, y + 15, " : " + string(global.pontos));
draw_text(250, 110," : " + string(level));

draw_set_color(-1);
draw_set_font(-1);





