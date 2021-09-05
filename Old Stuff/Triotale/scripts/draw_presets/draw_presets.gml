///@arg Preset
function draw_presets(){
	switch(argument0){
		case 0:
		{
	var BODY_X = sin(siner1/60) * 6
var BODY_Y = sin(siner1/30) * -2
var LCCX3 =  0// + lengthdir_x(15,siner1)
var LCCY3 =  0// + lengthdir_y(15,siner1)
var LCCX1 =  0 + sin(siner1/60) * 2//lengthdir_x(2,siner1)
var LCCX4 =  0 + sin(siner1/60) * 5//lengthdir_x(5,siner1)
var LCCY4 =  0 //+ lengthdir_y(15,siner1)
draw_sprite_pos(spr_battle_techno,1,(x-46+BODY_X)-28+LCCX1,(y-76+BODY_Y)-56,(x+BODY_X-46)+28,(y-76+BODY_Y)-56,(x-46+BODY_X)+28+LCCX3,(y-76+BODY_Y)+56+LCCY4,(x-46+BODY_X)-28+LCCX4,(y-76+BODY_Y)+56+LCCY4,1)
draw_sprite_ext(spr_battle_techno,7,x+BODY_X+ sin(siner1/60) * 2,y+BODY_Y,2,2,0,c_white,1)
var LEGCORNER_X1 = 0-46+BODY_X
var LEGCORNER_Y1 = 0-(46*2)+BODY_Y
var LEGCORNER_X2 = 0+54+BODY_X
var LEGCORNER_Y2 = 0-(46*2)+BODY_Y
var LEGCORNER_X3 = 0+54
var LEGCORNER_Y3 = 0//+46
var LEGCORNER_X4 = 0-46
var LEGCORNER_Y4 = 0//+46
//draw_sprite_pos(spr_battle_techno,3,LEGCORNER_X1,LEGCORNER_Y1,LEGCORNER_X2,LEGCORNER_Y2,LEGCORNER_X3,LEGCORNER_Y3,LEGCORNER_X4,LEGCORNER_Y4,1)
draw_sprite_pos_ext(spr_battle_techno,3,x,y,LEGCORNER_X1,LEGCORNER_Y1,LEGCORNER_X2,LEGCORNER_Y2,LEGCORNER_X3,LEGCORNER_Y3,LEGCORNER_X4,LEGCORNER_Y4,0,c_red,1)
var ARMANGLE = sin(siner1/30) * 4
//draw_sprite_ext(spr_battle_techno,6,x+BODY_X,y+BODY_Y,2,2,ARMANGLE,c_white,1)
//draw_sprite_ext(spr_battle_techno,8,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
var dir = (sin((siner1+60)/60)) * 7
var dirr = sin(siner1/60) * 40
var dir2 = sin(siner1/60) * 44
//draw_sprite_ext(spr_battle_techno_arm,1,x-32+BODY_X+lengthdir_x(-4/2,13+dir2+180),y-114+BODY_Y+lengthdir_y(14/2,13+dir2+180),2,2,dirr,c_white,1)
//draw_sprite_ext(spr_battle_techno_arm,2,x-32+BODY_X+lengthdir_x(-8/2,13+dir2+180),y-114+BODY_Y+lengthdir_y(14/2,13+dir2+180),2,2,dir,c_white,1)
draw_sprite_ext(spr_battle_techno_arm2,_larm_frame,x-16+BODY_X,y-126+BODY_Y,2,2,dir+6,c_white,1)
draw_sprite_ext(spr_battle_techno,4,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
draw_sprite_ext(spr_battle_techno,5,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
//draw_sprite_ext(spr_battle_techno,2,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
var RCCX1 = (x+9+16*2 + BODY_X) - 43// + BODY_X
var RCCY1 = (y-1-36*3 + BODY_Y) - 109// + BODY_Y
var RCCX2 = (x+9+16*2 + BODY_X) + 43// + BODY_X
var RCCY2 = (y-1-36*3 + BODY_Y) - 109// + BODY_Y
var RCCX3 = (x+9+16*2 + BODY_X) + 43// + BODY_X
var RCCY3 = (y-1-36*3 + BODY_Y) + 109// + BODY_Y
//var RCCX4 = (x+9+16*2) - 43// + BODY_X
//var RCCY4 = (y-1-36*3) + 109// + BODY_Y
var RCCX4 = (x+9+16*2 + BODY_X) - 43 //+ lengthdir_x(15,siner1)// + BODY_X
var RCCY4 = (y-1-36*3 + BODY_Y) + 109 + sin(siner1/120)*15// + BODY_Y
draw_sprite_pos(spr_battle_techno,2,RCCX1,RCCY1,RCCX2,RCCY2,RCCX3,RCCY3,RCCX4,RCCY4,1)
draw_sprite_ext(spr_battle_techno_alt,7 + _rarm_frame,x+BODY_X+ sin(siner1/60) * 2,y+BODY_Y,2,2,0,c_white,1)
if(_larm_frame = 2){
//draw_sprite_pos(spr_battle_rod_string,0,x-30-10+BODY_X,y-130-54+BODY_Y,x-24-10+BODY_X,y-130-54+BODY_Y,_rod_target_x,_rod_target_y,_rod_target_x-4,_rod_target_y,1)
draw_sprite_pos(spr_battle_rod_string,0,x-30-10+BODY_X+lengthdir_x(62,dir+90),y-130+6+BODY_Y+lengthdir_y(62,dir+90),x-24-10+BODY_X+lengthdir_x(62,dir+90),y-130+6+BODY_Y+lengthdir_y(62,dir+90),_rod_target_x,_rod_target_y,_rod_target_x-4,_rod_target_y,1)
draw_sprite_ext(spr_battle_techno_arm2,3,_rod_target_x,_rod_target_y,2,2,0,c_white,1)
}
//draw_sprite_pos(spr_battle_techno,2,RCAPECORNER_X1,RCAPECORNER_Y1,RCAPECORNER_X2,RCAPECORNER_Y2,RCAPECORNER_X3,RCAPECORNER_Y3,RCAPECORNER_X4,RCAPECORNER_Y4,1)
		}
	break;
		case 1:
		var LEG_SKEW_X = 4 + cos(siner1/30) * 6
		var LEFTARM_ANGLE = -1 + cos(siner1/30) * 1
		var BODY_Y = 1 + cos(siner1/15) * 1
		var GUN_Y = 0 + cos(siner1/30) * 2
		draw_sprite_ext(spr_battle_tommy_arms,1,x+LEG_SKEW_X+12,y-148+BODY_Y,2,2,LEFTARM_ANGLE,c_white,1)
		draw_sprite_ext(spr_battle_tommy,4,x,y,2,2,0,c_white,1)
		draw_sprite_pos_ext(spr_battle_tommy,3,x-6,y,-32+LEG_SKEW_X,-12-90+BODY_Y,+32+LEG_SKEW_X,-12-90+BODY_Y,+32,(-12)-0,-32,(-12)-0,0,c_white,1)
		draw_sprite_ext(spr_battle_tommy,2,x+LEG_SKEW_X,y+BODY_Y,2,2,0,c_white,1)
		draw_sprite_ext(spr_battle_tommy_arms,0,x+LEG_SKEW_X-32,y-152+BODY_Y+GUN_Y,2,2,0,c_white,1)
		//draw_sprite_ext(spr_battle_tommy,5,x+LEG_SKEW_X,y,2,2,0,c_white,1)
		//draw_sprite_ext(spr_battle_tommy,6,x+LEG_SKEW_X,y,2,2,0,c_white,1)
		draw_sprite_ext(spr_battle_tommy,1,x+LEG_SKEW_X,y+BODY_Y,2,2,0,c_white,1)
	break;
	case 2:
		{
	var BODY_X = sin(siner1/60) * 6
var BODY_Y = sin(siner1/30) * -2
var LCCX3 =  0// + lengthdir_x(15,siner1)
var LCCY3 =  0// + lengthdir_y(15,siner1)
var LCCX1 =  0 + sin(siner1/60) * 2//lengthdir_x(2,siner1)
var LCCX4 =  0 + sin(siner1/60) * 5//lengthdir_x(5,siner1)
var LCCY4 =  0 //+ lengthdir_y(15,siner1)
//draw_sprite_pos(spr_battle_techno_alt,1,(x-46+BODY_X)-28+LCCX1,(y-76+BODY_Y)-56,(x+BODY_X-46)+28,(y-76+BODY_Y)-56,(x-46+BODY_X)+28+LCCX3,(y-76+BODY_Y)+56+LCCY4,(x-46+BODY_X)-28+LCCX4,(y-76+BODY_Y)+56+LCCY4,1)
draw_sprite_pos_ext(spr_battle_techno_alt,1,x-48+BODY_X,y-64+BODY_Y,-45,-76,45,-76,45,0,-45 - sin(siner1/60)*4,0 + sin(siner1/60)*2,0,c_white,1)
var LEGCORNER_X1 = 0-46+BODY_X
var LEGCORNER_Y1 = 0-(46*2)+BODY_Y
var LEGCORNER_X2 = 0+54+BODY_X
var LEGCORNER_Y2 = 0-(46*2)+BODY_Y
var LEGCORNER_X3 = 0+54
var LEGCORNER_Y3 = 0//+46
var LEGCORNER_X4 = 0-46
var LEGCORNER_Y4 = 0//+46
//draw_sprite_pos(spr_battle_techno,3,LEGCORNER_X1,LEGCORNER_Y1,LEGCORNER_X2,LEGCORNER_Y2,LEGCORNER_X3,LEGCORNER_Y3,LEGCORNER_X4,LEGCORNER_Y4,1)
draw_sprite_pos_ext(spr_battle_techno_alt,3,x,y,LEGCORNER_X1,LEGCORNER_Y1,LEGCORNER_X2,LEGCORNER_Y2,LEGCORNER_X3,LEGCORNER_Y3,LEGCORNER_X4,LEGCORNER_Y4,0,c_red,1)
var ARMANGLE = sin(siner1/30) * 4
//draw_sprite_ext(spr_battle_techno,6,x+BODY_X,y+BODY_Y,2,2,ARMANGLE,c_white,1)
//draw_sprite_ext(spr_battle_techno,8,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
var dir = (sin((siner1+60)/60)) * 7
var dirr = sin(siner1/60) * 40
var dir2 = sin(siner1/60) * 44
//draw_sprite_ext(spr_battle_techno_arm,1,x-32+BODY_X+lengthdir_x(-4/2,13+dir2+180),y-114+BODY_Y+lengthdir_y(14/2,13+dir2+180),2,2,dirr,c_white,1)
//draw_sprite_ext(spr_battle_techno_arm,2,x-32+BODY_X+lengthdir_x(-8/2,13+dir2+180),y-114+BODY_Y+lengthdir_y(14/2,13+dir2+180),2,2,dir,c_white,1)
draw_sprite_ext(spr_battle_techno_arm2,_larm_frame,x-28+BODY_X,y-130+BODY_Y,2,2,dir+7,c_white,1)
draw_sprite_ext(spr_battle_techno_alt,4,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
draw_sprite_ext(spr_battle_techno_alt,5,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
//draw_sprite_ext(spr_battle_techno,2,x+BODY_X,y+BODY_Y,2,2,0,c_white,1)
var RCCX1 = (x+9+16*2 + BODY_X) - 43// + BODY_X
var RCCY1 = (y-1-36*3 + BODY_Y) - 109// + BODY_Y
var RCCX2 = (x+9+16*2 + BODY_X) + 43// + BODY_X
var RCCY2 = (y-1-36*3 + BODY_Y) - 109// + BODY_Y
var RCCX3 = (x+9+16*2 + BODY_X) + 43// + BODY_X
var RCCY3 = (y-1-36*3 + BODY_Y) + 109// + BODY_Y
//var RCCX4 = (x+9+16*2) - 43// + BODY_X
//var RCCY4 = (y-1-36*3) + 109// + BODY_Y
var RCCX4 = (x+9+16*2 + BODY_X) - 43 //+ lengthdir_x(15,siner1)// + BODY_X
var RCCY4 = (y-1-36*3 + BODY_Y) + 109 + sin(siner1/120)*15// + BODY_Y
//draw_sprite_pos(spr_battle_techno_alt,2,RCCX1,RCCY1,RCCX2,RCCY2,RCCX3,RCCY3,RCCX4,RCCY4,1)
//draw_sprite_pos(spr_battle_techno,2,RCAPECORNER_X1,RCAPECORNER_Y1,RCAPECORNER_X2,RCAPECORNER_Y2,RCAPECORNER_X3,RCAPECORNER_Y3,RCAPECORNER_X4,RCAPECORNER_Y4,1)
draw_sprite_pos_ext(spr_battle_techno_alt,2,x+38+BODY_X,y-20+BODY_Y,-23,-122,23,-122,23,0,-23,0,0,c_white,1)
draw_sprite_ext(spr_battle_techno_alt,7 + _rarm_frame,x+BODY_X+ sin(siner1/60) * 2,y+BODY_Y,2,2,0,c_white,1)
if(_larm_frame = 2){
//draw_sprite_pos(spr_battle_rod_string,0,x-30-10+BODY_X,y-130-54+BODY_Y,x-24-10+BODY_X,y-130-54+BODY_Y,_rod_target_x,_rod_target_y,_rod_target_x-4,_rod_target_y,1)
draw_sprite_pos(spr_battle_rod_string,0,x-30-26+BODY_X+lengthdir_x(62,dir+90),y-130+6+BODY_Y+lengthdir_y(62,dir+90),x-24-26+BODY_X+lengthdir_x(62,dir+90),y-130+6+BODY_Y+lengthdir_y(62,dir+90),_rod_target_x,_rod_target_y,_rod_target_x-4,_rod_target_y,1)
draw_sprite_ext(spr_battle_techno_arm2,3,_rod_target_x,_rod_target_y,2,2,0,c_white,1)
}
}
	break;
	case 3:
		var LEFTARM_ANGLE = -2 + sin(siner1/30) * -2
		var RIGHTARM_ANGLE = 2 + sin(siner1/30) * 2
		var LEG_YSCALE = (sprite_get_height(spr_battle_tubbo)/sprite_get_height(spr_battle_tubbo)+sin(siner1/30)) * 4/sprite_get_height(spr_battle_tubbo)
		var LEG_YOTHEROFFSET = sin(siner1/30) * 4
		draw_sprite_ext(spr_battle_tubbo,0,x,y,2,2,0,c_white,1)
		draw_sprite_ext(spr_battle_tubbo,1,x,y,2,2+LEG_YSCALE,0,c_white,1)
		//draw_sprite_ext(spr_battle_tubbo,2,x,y,2,2,0,c_white,1)
		draw_sprite_ext(spr_battle_tubbo_arms,0,x-13*2,y-LEG_YOTHEROFFSET-73*2,2,2,LEFTARM_ANGLE,c_white,1)
		draw_sprite_ext(spr_battle_tubbo_arms,1,x+15*2,y-LEG_YOTHEROFFSET-73*2,2,2,RIGHTARM_ANGLE,c_white,1)
		draw_sprite_ext(spr_battle_tubbo,3,x,y-LEG_YOTHEROFFSET,2,2,0,c_white,1)
		draw_sprite_ext(spr_battle_tubbo,4,x,y-LEG_YOTHEROFFSET,2,2,0,c_white,1)
	break;
	}
}