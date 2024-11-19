/// @description Insert description here
// You can write your code in this editor

level = 1;
prox_level = 100;
alarm[0] = room_speed;

color = c_aqua;

cria_inimigo = function()
{

var xinimigo = irandom_range(90, 1850);
var yinimigo = irandom_range(- 288, -800 - (level * 800));

var inimigo	= obj_ini_alpha;
var chance  = random_range(0, level);


	if(chance > 2 and chance < 4)
	{
		var inimigo	= obj_ini1;
	}
	else if(chance > 4){
		var inimigo = obj_ini2
	}
	


instance_create_layer(xinimigo, yinimigo, "inimigos", inimigo);
	
}




