/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.6;
image_yscale = 0.6;


vida = 3;
vel = 7;
tiro_level = 1;
espera		= room_speed;
meu_escudo  = noone;
numero_escudo = 3;



movi = function(){
	
	var up, down, left, right;

	up		= keyboard_check(ord("W"))
	down	= keyboard_check(ord("S"))
	left	= keyboard_check(ord("A"))
	right	= keyboard_check(ord("D"))
	

	y -= up		* vel;
	y += down	* vel;
	x -= left	* vel;
	x += right	* vel;


	x = clamp(x, 32, 1888);
	y = clamp(y, 64, 1024);

}

atirando = function()
{
	
	
	var fire;
	fire = keyboard_check(vk_space);
	var ytiro = y - sprite_height/2.5
	if(fire && alarm[0] == -1)
	{
		alarm[0] = espera;
		audio_play_sound(snd_tiro, 1, 0);
		if(tiro_level == 1)
		{
			instance_create_layer(x, ytiro,"tiros", obj_tiro);
		}
			 
		}
}

perde_vida = function()
{
	
	if(!meu_escudo){
		
		if(vida > 0)
		{
			vida -= 1;
			global.shake = 5;
		}
		else
		{
			instance_destroy();
			audio_play_sound(snd_die, 1, 0);
			global.shake = 10;
		}
	}
	
	
}


escudo = function(){
	if(keyboard_check_pressed(ord("E")) and numero_escudo > 0 and !meu_escudo){
		
	var escudo = instance_create_layer(x, y, "escudo", obj_escudo);
	
	numero_escudo -= 1;
	
	escudo.alvo_escudo = id;
	
	meu_escudo = escudo;
	}
}


