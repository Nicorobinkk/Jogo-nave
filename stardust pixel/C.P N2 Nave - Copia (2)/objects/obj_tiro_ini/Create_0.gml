/// @description Insert description here
// You can write your code in this editor

vspeed = 10;
image_xscale = 2.5;
image_yscale = 2.5;

brilho = spr_brilho;

sair_room = function(){
	
	if(y > room_height){
		instance_destroy();
		//show_debug_message("oi");
	}
}