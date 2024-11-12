/// @description Insert description here
// You can write your code in this editor

vspeed  = 3;
shake = 1;
life = 1;

alarm[0] = random_range(1, 2) * room_speed;
atirando = function()
{
	if( y >= 0)
	{
	instance_create_layer(x -3 ,y+ sprite_height/2 , "tiros", obj_tiro_ini);
	//audio_play_sound();
	}
	
}

leva_dano = function(dano)
{
	if(dano == undefined){
		dano = 0;
	}
	
	life -= dano;
	
	if(life <= 0){
		global.shake = shake;
		instance_destroy();
		//morrer();
	}
}
/*
morrer = function()
{
	
	instance_create_layer(x, y, "inimigos", obj_sangue);
	
	obj_sangue.image_angle = irandom_range(1, 359);

}

*/

