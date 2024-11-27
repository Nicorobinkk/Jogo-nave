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
				if(place_meeting(obj_ini_alpha.x, obj_ini_alpha.y, obj_ini_alpha)){
					instance_destroy(id, false);
				}
				
			
			
		}
	}
	
	
}


alarm[0] = room_speed * 3;
