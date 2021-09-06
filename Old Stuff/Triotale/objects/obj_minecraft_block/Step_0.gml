if !instance_exists(obj_inventory) {
	if scr_kb_button("x") || scr_kb_button(vk_shift) {
		if mb= 1 {
			r= 0;
			curdurability-= 1;
			event_user(0);
			randomize();
			var rng= irandom(100);
			var rng0= irandom_range(40,80);
			var rng1= irandom_range(45,rng0+(80-rng0));
			//show_debug_message(string(rng)+"|"+string(rng0)+"|"+string(rng1));
			if curdurability> 0 {
				if rng> rng0 && rng< rng1 {
					randomize();
					audio_play_sound(choose(sfx_minecraft_stone_block_breaking0,sfx_minecraft_stone_block_breaking1,sfx_minecraft_stone_block_breaking2,sfx_minecraft_stone_block_breaking3,sfx_minecraft_stone_block_breaking4,sfx_minecraft_stone_block_breaking5),50,0);
				}
			}else{
				randomize();
				audio_play_sound(choose(sfx_minecraft_stone_block_break0,sfx_minecraft_stone_block_break1,sfx_minecraft_stone_block_break2,sfx_minecraft_stone_block_break3),50,0);
				event_user(1);
			}
		}else{
			if r> rm {
				r= 0;
				curdurability= durability;
			}else{
				r++;
			}
		}
	}else{
		if r> rm {
			r= 0;
			curdurability= durability;
		}else{
			r++;
		}
	}
}