/// @description Insert description here
// You can write your code in this editor

chance = irandom_range(0, 100);



speed = 2;
direction = irandom(359);

if(chance > 75 )
	{
		
		cores = c_blue;
	}
	else if(chance > 45 )
	{
		
		cores = c_green;
	}
	else
	{
		
		cores = c_red;
	}

alarm[0] = room_speed * 3;





