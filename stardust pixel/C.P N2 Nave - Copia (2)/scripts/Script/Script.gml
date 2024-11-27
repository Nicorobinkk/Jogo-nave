// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


global.pontos = 0;
global.abates = 0;

function destroi_sqn()
{
	var elementos = layer_get_all_elements("boss_nasc")
	layer_sequence_destroy(elementos[0])
	
	//boss
	
	instance_create_layer(960, 288, "boss", obj_boss);
}

function boss_end(){
	var boss_die = layer_get_all_elements("boss_die")
	layer_sequence_destroy(boss_die[0]);
	
	
	if(instance_exists(obj_player))
	{
		layer_sequence_create("final_level", obj_player.x, obj_player.y, sqn_playerwin);
		instance_destroy(obj_player, false);
		
		/*
		if(instance_exists(obj_control))
		{
			
		obj_control.final_level = true;
		}
		*/
	}
	
	
}

function final_end()
{
	var _transicao = instance_create_layer(0,0, "player", obj_transicao)
	_transicao.destino = rm_05;
	
	
}