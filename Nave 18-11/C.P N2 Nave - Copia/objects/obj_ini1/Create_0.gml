/// @description Insert description here
// You can write your code in this editor

posso_mover = true;

event_inherited();
ponto = 30;
alarm[0] = random_range(1, 3) * room_speed;

image_xscale = 2.;
image_yscale = 2.;

atirando = function()
{
	if( y >= 0)
	{
	instance_create_layer(x ,y , "tiros", obj_tiro_ini1);
	audio_play_sound(snd_tiro_ini, 2, 0);
	}
	
}

olha_player = function()
{
	if(instance_exists(obj_player)){
		
	var dir, inter;
	
	dir = point_direction(x,y, obj_player.x, obj_player.y);
	image_angle = dir +90;
	
	inter = dir == clamp(dir, 90, 270);
	
	if(inter){
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
	}
	else{
		image_angle = 0;
	}
}