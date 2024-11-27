/// @description Insert description here
// You can write your code in this editor


var mouse_sobre = position_meeting(mouse_x, mouse_y, id);

var mouse_click = mouse_check_button_pressed(mb_left);

if(mouse_sobre){
	
	image_alpha = 0.5;
	
	if(mouse_click){
		var transicao = instance_create_layer(x, y, "instances", obj_transicao)
		transicao.destino = destino;
		audio_play_sound(snd_select,1, 0,);
	}
}
else{
	image_alpha = 1;
}



