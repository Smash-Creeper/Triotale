//window_set_caption(string(instance_number(obj_minecraft_block)));
if (scr_kb_button("z") || scr_kb_button(vk_enter)) && !instance_exists(obj_inventory) {
	if global.slot_size[4]> 0 {
		var ins= scr_mc_block(floor(mouse_x/32)*32,floor(mouse_y/32)*32,0,1,60,spr_block,global.slot_id[4],2,2,0);
		global.slot_size[4]-= 1;
		with ins {
			if place_meeting(x,y,obj_minecraft_block) {
				global.slot_size[4]+= 1;
				instance_destroy();
			}else{
				randomize();
				audio_play_sound(choose(sfx_minecraft_stone_block_place0,sfx_minecraft_stone_block_place1,sfx_minecraft_stone_block_place2,sfx_minecraft_stone_block_place3),50,0);
				cur= 4;
				ds= 1;
			}
		}
	}else{
		global.slot_size[4]= 0;
	}
}
if scr_kb_button_pressed("c") || scr_kb_button_pressed(vk_control) {
	if !instance_exists(obj_inventory) {
		instance_create_depth(0,0,0,obj_inventory);
	}else{
		with obj_inventory {instance_destroy();}
	}
}
if scr_kb_button_pressed("x") {
	if instance_exists(obj_inventory) {
		with obj_inventory {instance_destroy();}
	}
}