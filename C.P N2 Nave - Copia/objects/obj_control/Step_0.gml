/// @description Insert description here
// You can write your code in this editor


if(global.pontos > prox_level)
{
	level += 1;
	prox_level *= 1.5;
}

if(level >= 10 and cria_boss == true){
	
	if(cria_boss == true){
			layer_sequence_create("boss_nasc", 960, 512, sqn_boss)	
			cria_boss = false;
}
instance_destroy(obj_ini_alpha, false);

}