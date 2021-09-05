//Bullet inside:
//surface_set_target(Battle_GetBoardSurface());{
//	draw_self();
//}surface_reset_target();

//For bullet that will show outside the box,
//draw the bullet directly.
if(!outside){
	surface_set_target(Battle_GetBoardSurface());
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
//draw_self();
if(!outside){
	surface_reset_target();
}