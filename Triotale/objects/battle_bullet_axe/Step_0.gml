// You can write your code in this editor

// Inherit the parent event
if(image_alpha > 0.5){
event_inherited();
}
image_xscale = scale_x/4
image_yscale = scale_y/4
switch(ability){
	case 0:
	
	break;
	
	case 1:
	x = ogx + lengthdir_x(sprite_height/2,dir)
	y = ogy + lengthdir_y(sprite_height/2,dir)
	image_angle = dir + 90
	dir += turnspeed
	break;
	case 2:
	x = ogx + lengthdir_x(distance/2,dir)
	y = ogy + lengthdir_y(distance/2,dir)
	image_angle = dir + 270
//	dir += turnspeed
	break;
	
}