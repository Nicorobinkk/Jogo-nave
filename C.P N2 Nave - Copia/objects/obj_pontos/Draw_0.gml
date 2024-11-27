/// @description Insert description here
// You can write your code in this editor

var _pontos = round(pontos);

var _abates = round(abates);


draw_sprite_ext(spr_gameover, 1, 286, 100, 15, 15, 0, c_white, 1);
draw_sprite_ext(spr_pontuacao, 1, 286, 349, 10, 10, 0, c_white, 1);
draw_sprite_ext(spr_abates, 1, 286, 549, 10, 10, 0, c_white, 1);
draw_set_font(f_gameover);
//draw_text(286, 100, "Game over")
draw_text(780, 360, ": " +string(_pontos))
draw_text(1080, 570, ": " + string(_abates))
draw_set_font(-1);


if(pontos < global.pontos)
{
	var incrementa_pontos = global.max_pontos * 0.005;
	pontos += incrementa_pontos;
	
}


if(abates < global.abates)
{
	var incrementa_inimigos = global.total_inimigos * 0.005;
	abates += incrementa_inimigos;
}





