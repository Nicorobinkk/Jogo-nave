/// @description Insert description here
// You can write your code in this editor


draw_self();

gpu_set_blendmode(bm_add);


var cores = choose(c_red, c_orange, c_purple);
draw_sprite_ext(brilho, image_index, x, y, image_xscale * 1.1 , image_yscale * 1.1, image_angle, cores, 0.4);
gpu_set_blendmode(bm_normal);





