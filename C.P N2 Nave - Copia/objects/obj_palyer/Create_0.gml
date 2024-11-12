/// @description Insert description here
// You can write your code in this editor
vida = 1;
vel = 5;
tiro_level = 1;
espera		= room_speed;


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
		//audio_play_sound(snd_tiro1, 1, 0);
		if(tiro_level == 1)
		{
			instance_create_layer(x, ytiro,"tiros", obj_tiro);
		}
			
		}
}

perde_vida = function()
{
	
	
		if(vida > 0)
		{
			vida -= 1;
			//screenshake(5);
		}
		else
		{
			instance_destroy();
			//screenshake(10);
		}
	
}




