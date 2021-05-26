siner1 += 2
siner2 += 2

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