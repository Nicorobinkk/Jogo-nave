/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.3;
image_yscale = 1.3;
ponto = 20;

vspeed  = 3;
shake = 1;
life = 1;

alarm[0] = random_range(1, 2) * room_speed;
atirando = function()
{
	if( y >= 0)
	{
	instance_create_layer(x -3 ,y+ sprite_height/2 , "tiros", obj_tiro_ini);
	audio_play_sound(snd_tiro_ini, 2, 0);
	}
	
}

leva_dano = function(dano)
{
	if(dano == undefined){
		dano = 0;
	}
	
	life -= dano;
	
	if(life <= 0){
		global.shake = shake;
		instance_destroy();
		//morrer();
	}
}
/*
morrer = function()
{
	
	instance_create_layer(x, y, "inimigos", obj_sangue);
	
	obj_sangue.image_angle = irandom_range(1, 359);

}

*/

sair_room = function(){
	
	if(y > room_height){
		instance_destroy(id, false);
		//show_debug_message("oi");
	}
}