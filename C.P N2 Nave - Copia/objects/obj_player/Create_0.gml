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
	
	if(up){
		sprite_index = spr_player_ace;
	}
	else{
		sprite_index = spr_player;
	}

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
		else if(tiro_level == 2)
		{
			tiro02();
		}
		else if(tiro_level == 3)
		{
			tiro3();
		}
		else if(tiro_level == 4)
		{
			tiro4();
		}
		else
		{
			tiro4();
			tiro3();
		}
			
		}
}

tiro02 = function()
{
	var ytiro = y - sprite_height/2
	var tiro11 = instance_create_layer(x -20, ytiro,"tiros", obj_tiro);
	//tiro1.hspeed = -5;
	var tiro22 = instance_create_layer(x +20, ytiro,"tiros", obj_tiro);
	//tiro2.hspeed =  5;	
}

tiro3 = function()
{
	var ytiro = y - sprite_height/2.5
	var direcao = 75;
	repeat(3)
	{
		var tiro = instance_create_layer(x, ytiro,"tiros", obj_tiro);
			
		tiro.direction = direcao
			
		tiro.image_angle = tiro.direction - 90;
				
		direcao += 15;
	}
}
			 
tiro4 = function()
{
	
	var ytiro = y - sprite_height/2.5
	
	var tiro3 = instance_create_layer(x, ytiro,"tiros", obj_tiro);
	tiro3.direction = 75;
	tiro3.image_angle = tiro3.direction - 90
	var tiro5 = instance_create_layer(x, ytiro,"tiros", obj_tiro);
	tiro5.direction = 105;
	tiro5.image_angle = tiro5.direction - 90
	var tiro1 = instance_create_layer(x -25, ytiro,"tiros", obj_tiro2);
	tiro1.hspeed = 5;
	var tiro2 = instance_create_layer(x +25, ytiro,"tiros", obj_tiro2);
	tiro2.hspeed =  -5;
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


escudo1 = function(){
	if(keyboard_check_pressed(ord("E")) and numero_escudo > 0 and !meu_escudo){
		
	var escudo = instance_create_layer(x, y, "escudo", obj_escudo);
	
	numero_escudo -= 1;
	
	escudo.alvo_escudo = id;
	
	meu_escudo = escudo;
	}
}


/// @method level_up(chance)
level_up = function(_chance)
{
	if(_chance > 75)
	{
		if(tiro_level < 5)
		{
			tiro_level += 1;
		//cor = c_blue;
		}
		else
		{
			if(instance_exists(obj_control))
			{
				global.pontos += 50;	
			}
		}
	}
		
	if(_chance > 45)
	{
		if(espera > 21)
		{
		espera *= 0.9;
		//cor = c_green;
		}
		else
		{
			if(instance_exists(obj_control))
			{
				global.pontos += 50;	
			}
		}
	}
	else
	{
		if(vel < 13)
		{
		vel += 0.5;
		//cor = c_red;
		}
		else
		{
			if(instance_exists(obj_control))
			{
				global.pontos += 50;	
			}
		}
	}

}

