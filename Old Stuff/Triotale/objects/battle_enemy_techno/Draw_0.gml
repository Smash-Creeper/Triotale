siner1 += 2
siner2 += 2

if(draw_withers){
	var WITHER_Y = sin(siner1/30) * -2
	draw_sprite_ext(spr_wither_placeholder,0,130,130+WITHER_Y,1.5,1.5,0,c_white,1)
	draw_sprite_ext(spr_wither_placeholder,0,510,130+WITHER_Y,-1.5,1.5,0,c_white,1)
}

switch(state){
	case 0:
	draw_presets(0);
	break;
	case 1:
	draw_sprite_ext(spr_battle_techno_slash,_frame,x,y,2,2,0,c_white,1)
	break;
	case 2:
	draw_presets(2);
//	draw_sprite_ext(spr_battle_techno_alt,0,x,y,2,2,0,c_white,1)
	break;
}