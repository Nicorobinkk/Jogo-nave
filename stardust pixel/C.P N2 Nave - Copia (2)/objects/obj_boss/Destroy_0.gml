/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_bossdie, 1, 0);

layer_sequence_create("boss_die", x, room_height/2 ,sqn_bossdie);


global.shake = 50;