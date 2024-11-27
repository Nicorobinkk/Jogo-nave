/// @description Insert description here
// You can write your code in this editor

dano = 1;
vspeed = -15;

image_xscale = 2.5;
image_yscale = 2.5;

brilho = spr_brilho;

colision_tiro = function()
{
	var inimigo = instance_place(x, y, obj_ini_alpha);
	
	
	
	if(inimigo){
		inimigo.leva_dano(dano);
		instance_destroy();
		instance_create_layer(x, y, layer, obj_boom);
		
		if(global.shake < 4){
			global.shake = (obj_ini_alpha/1.9);
		}
	}
	

}

sair_room = function(){
	
	if(y < -15){
		instance_destroy();
		//show_debug_message("oi");
	}
}