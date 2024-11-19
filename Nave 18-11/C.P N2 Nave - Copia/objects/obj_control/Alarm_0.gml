/// @description Insert description here
// You can write your code in this editor


var onda = 2 * level

if(!instance_exists(obj_tiro_ini))
{
	if (level < 10)
	{
		repeat(onda)
		{
		 cria_inimigo();
		}
	}
}


alarm[0] = room_speed * 3;
