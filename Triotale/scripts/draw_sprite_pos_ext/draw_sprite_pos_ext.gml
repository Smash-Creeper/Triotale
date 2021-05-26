///@arg	sprite
///@arg	subimg
///@arg	x
///@arg	y
///@arg	rx1
///@arg	ry1
///@arg	rx2
///@arg	ry2
///@arg	rx3
///@arg	ry3
///@arg	rx4
///@arg	ry4
///@arg	rot
///@arg	col
///@arg	alpha
function draw_sprite_pos_ext(){
	var SPR = argument[0]
	var IMG = argument[1]
	var X = argument[2]
	var Y = argument[3]
	var RX1 = argument[4]
	var RY1 = argument[5]
	var RX2 = argument[6]
	var RY2 = argument[7]
	var RX3 = argument[8]
	var RY3 = argument[9]
	var RX4 = argument[10]
	var RY4 = argument[11]
	var ANGLE = argument[12]
	var COLOR = argument[13]
	var ALPHA = argument[14]
	draw_set_color(COLOR)
//	draw_sprite_pos(SPR,IMG,X+lengthdir_x(RX1,ANGLE+(135-(90*0))),Y+lengthdir_y(RY1,ANGLE+(135-(90*0))),X+lengthdir_x(RX2,ANGLE+(135-(90*1))),Y+lengthdir_y(RY2,ANGLE+(135-(90*1))),X+lengthdir_x(RX3,ANGLE+(135-(90*2))),Y+lengthdir_y(RY3,ANGLE+(135-(90*2))),X+lengthdir_x(RX4,ANGLE+(135-(90*3))),Y+lengthdir_y(RY4,ANGLE+(135-(90*3))),ALPHA)
	draw_sprite_pos(SPR,IMG,(X)+RX1,(Y)+RY1,(X)+RX2,(Y)+RY2,(X)+RX3,(Y)+RY3,(X)+RX4,(Y)+RY4,ALPHA)
}