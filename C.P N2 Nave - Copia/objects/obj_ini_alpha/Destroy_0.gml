/// @description Insert description here
// You can write your code in this editor

global.pontos += ponto;
audio_play_sound(snd_explosao, 3, 0);
instance_create_layer(x, y, "inimigos", obj_explosao);

drop_item(chance);


global.abates += 1;
