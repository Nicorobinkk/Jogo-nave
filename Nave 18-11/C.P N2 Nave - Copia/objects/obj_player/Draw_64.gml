/// @description Insert description here
// You can write your code in this editor

var altura_gui = 90;
var largura_gui = 50;
var largura_gui_escudo = 50;


repeat(vida)
{
	draw_sprite_ext(spr_life, 0, largura_gui, altura_gui - 40, 0.5, 0.5, 0, c_white, 0.5);
	largura_gui += 70;
}


repeat(numero_escudo)
{
	draw_sprite_ext(spr_escudo, 3, largura_gui_escudo , altura_gui + 20, 0.4, 0.4, 0,  c_white, 0.5);
	largura_gui_escudo += 70;
}






