/// @description Insert description here
// You can write your code in this editor

randomize();


image_xscale *= 1;
image_yscale = image_xscale;


estado_atual =  choose("estado1", "estado2", "estado3", "estado4");

vida_max = 1000;
vida = vida_max;

deley_estado = room_speed * 5;
espera_estado = deley_estado;

espera = 0;

deley_espera = room_speed*2;

hvel = 3





estado01 = function()
{
	espera--;
	
	if(espera <= 0)
	{
		var tiro1 = instance_create_layer(x  ,y+ sprite_height/2 , "tiros", obj_tiro_ini1)
		audio_play_sound(snd_tiro_ini, 1, 0);
		tiro1.speed = 15;
		espera = deley_espera/3;
	}
}

estado02 = function()
{
	espera--;
	
	x += hvel
	if(x <= 288 or x >= 1632)
	{
		hvel = hvel * -1;	
	}
	
	
	if(espera <= 0)
	{
		var tiro2 = instance_create_layer(x - 115, y + 19, "tiros", obj_tiro_ini2)
		var tiro22 =instance_create_layer(x + 115, y + 19, "tiros", obj_tiro_ini2)
		audio_play_sound(snd_tiro_ini, 1, 0);
		tiro2.vspeed = 15;
		tiro22.vspeed = 15;
		espera = deley_espera/3;
	}
	
	
}

estado03 = function()
{
	espera--;
	
	if(espera <= 0)
	{
		var tiro3 = instance_create_layer(x  ,y+ sprite_height/2 , "tiros", obj_tiro_ini1)
		audio_play_sound(snd_tiro_ini, 1, 0);
		tiro3.speed = 15;
		espera = deley_espera / 3;
	}
	
	if(espera == deley_espera/3)
	{
		var tiro33 = instance_create_layer(x - 115, y + 19, "tiros", obj_tiro_ini)
		var tiro333 =  instance_create_layer(x + 115, y + 19, "tiros", obj_tiro_ini)	
		
		tiro33.vspeed = 15;
		tiro333.vspeed = 15;
	}
	
	
}


estado04 = function()
{
	espera--;
	
	
	var dir = 0;
	if(espera <= 0){
		
		
		repeat(13){
		
	
		
		var tiro_4 = instance_create_layer(x, y + 70, "tiros", obj_tiro_ini);
		tiro_4.direction = dir;
		tiro_4.image_angle = tiro_4.direction-90;
		dir += -15;
		
		}
		
		espera = deley_espera/3;
		
	}
		
	
	
}



troca_estado = function()
{
	if(espera_estado <= 0)
	{
		estado_atual = choose("estado1", "estado2", "estado3", "estado4");
	
		espera_estado = deley_estado;
	
		
	}	
}



