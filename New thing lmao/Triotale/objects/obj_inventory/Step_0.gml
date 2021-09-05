if global.xp>= global.xpmax {global.lv+= 1; global.xp= 0; global.xpmax*= 2; global.hp= 20;}
//if scr_mo_button(mb_any) {_x= mouse_x; _y= mouse_y;}
switch cur {case 0:	_x= 200; _y= 137;	break; /*Helmet (0)*/	case 1:	_x= 200; _y= 173;	break; /*Chestplate (1)*/ case 2:	_x= 200; _y= 209;	break; /*Leggins (2)*/ case 3:	_x= 200; _y= 244;	break; /*Boots (3)*/	case 4:	_x= 338; _y= 137;	break; /*Slot 0 (4)*/	case 5:	_x= 374; _y= 137;	break; /*Slot 1 (5)*/	case 6:	_x= 410; _y= 137;	break; /*Slot 2 (6)*/	case 7:	_x= 338; _y= 173;	break; /*Slot 3 (7)*/	case 8:	_x= 374; _y= 173;	break; /*Slot 4 (8)*/	case 9:	_x= 410; _y= 173;	break; /*Slot 5 (9)*/	case 10:	_x= 338; _y= 209;	break; /*Slot 6 (10)*/	case 11:	_x= 374; _y= 209;	break; /*Slot 7 (11)*/	case 12:	_x= 410; _y= 209;	break; /*Slot 8 (12)*/	case 13:	_x= 374; _y= 245;	break; /*Shield (13)*/	default:	_x= -999; _y= -999;	break; /*Default (???)*/}
if scr_kb_button_pressed(vk_left) {switch cur {	case 0: cur= 6; break;	case 1: cur= 9; break;	case 2: cur= 12; break;	case 3: cur= 13; break;	case 4: cur= 0; break;	case 5: cur= 4; break;	case 6: cur= 5; break;	case 7: cur= 1; break;	case 8: cur= 7; break;	case 9: cur= 8; break;	case 10: cur= 2; break;	case 11: cur= 10; break;	case 12: cur= 11; break;	case 13: cur= 3; break;	default: cur= 0; break;}}
if scr_kb_button_pressed(vk_right) {switch cur {	case 0: cur= 4; break;	case 1: cur= 7; break;	case 2: cur= 10; break;	case 3: cur= 13; break;	case 4: cur= 5; break;	case 5: cur= 6; break;	case 6: cur= 0; break;	case 7: cur= 8; break;	case 8: cur= 9; break;	case 9: cur= 1; break;	case 10: cur= 11; break;	case 11: cur= 12; break;	case 12: cur= 2; break;	case 13: cur= 3; break;	default: cur= 0; break;}}
if scr_kb_button_pressed(vk_down) {switch cur {	case 0: cur= 1; break;	case 1: cur= 2; break;	case 2: cur= 3; break;	case 3: cur= 0; break;	case 4: cur= 7; break;	case 5: cur= 8; break;	case 6: cur= 9; break;	case 7: cur= 10; break;	case 8: cur= 11; break;		case 9: cur= 12; break;	case 10: cur= 4; break;	case 11: cur= 13; break;	case 12: cur= 6; break;	case 13: cur= 5; break;	default: cur= 0; break;}}
if scr_kb_button_pressed(vk_up) {switch cur {	case 0: cur= 3; break;	case 1: cur= 0; break;	case 2: cur= 1; break;	case 3: cur= 2; break;	case 4: cur= 10; break;	case 5: cur= 13; break;	case 6: cur= 12; break;	case 7: cur= 4; break;	case 8: cur= 5; break;	case 9: cur= 6; break;	case 10: cur= 7; break;	case 11: cur= 8; break;	case 12: cur= 9; break;	case 13: cur= 11; break;	default: cur= 0; break;}}
if scr_kb_button_pressed("z") || scr_kb_button_pressed(vk_enter) {
	if hold_id= -1 {
		if global.slot_id[cur]!= -1 {
			hold_id= global.slot_id[cur];
			hold_size= global.slot_size[cur];
			global.slot_id[cur]= -1;
			global.slot_size[cur]= 0;
		}
	}else{
		if global.slot_id[cur]= -1 {
			global.slot_id[cur]= hold_id;
			global.slot_size[cur]= hold_size;
			hold_id= -1;
			hold_size= 0;
		}else{
			var prehold_id= global.slot_id[cur], prehold_size= global.slot_size[cur];
			global.slot_id[cur]= hold_id;
			global.slot_size[cur]= hold_size;
			hold_id= prehold_id;
			hold_size= prehold_size;
		}
	}
}
