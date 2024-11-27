/// @description Insert description here
// You can write your code in this editor


event_inherited();

ponto = 40 ;
chance = 45 * obj_control.level;
image_xscale = 4;
image_yscale = 4;


hspeed = 5;

alarm[0] = random_range(0.2, 0.2) * room_speed;

atirando = function()
{
	if( y >= 0)
	{
	instance_create_layer(x -3 ,y+ sprite_height/2 , "tiros", obj_tiro_ini2);
	instance_create_layer(x -3 ,y+ sprite_height , "tiros", obj_tiro_ini2);
	audio_play_sound(snd_tiro_ini, 2, 0);
	}
	
}