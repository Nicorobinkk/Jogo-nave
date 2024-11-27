/// @description Insert description here
// You can write your code in this editor

var altura_gui = 68;
var largura_gui = 1080;
var largura_gui_escudo = 1080;


repeat(vida)
{
	draw_sprite_ext(spr_life, 0, largura_gui, altura_gui - 40, 3, 3, 0, c_white, 1);
	largura_gui += 70;
}


repeat(numero_escudo)
{
	draw_sprite_ext(spr_escudo, 11, largura_gui_escudo , altura_gui + 20, 1.1, 1.1, 0,  c_white, 1);
	largura_gui_escudo += 70;
}






