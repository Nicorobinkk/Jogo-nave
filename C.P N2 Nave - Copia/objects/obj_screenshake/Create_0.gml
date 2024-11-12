/// @description Insert description here
// You can write your code in this editor



global.shake = 0;


shakescreen = function()
{
	view_xport[0] = random_range(-global.shake, global.shake);

	view_yport[0] = random_range(-global.shake, global.shake);

	global.shake *= 0.95;

	if(global.shake < 0.5){
	global.shake = 0;
	}
}




