/// @description Insert description here
// You can write your code in this editor


// fazendo ele cortar pro meio 
if( y > room_height/5 && posso_mover == true)
{
	if(x < room_width/2)
		{
			hspeed = 4;
			
			posso_mover = false; 
		}
	else 
		{
			hspeed = -4;
			
			posso_mover = false;
		}
}


olha_player();

image_xscale = 2.;
image_yscale = 2.;

// Inherit the parent event
event_inherited();

