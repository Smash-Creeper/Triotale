draw_set_font(fnt_minecraftia_12);
if global.slot_size[4]> 0 {alpha= lerp(alpha,0.5,0.14);}else{alpha= lerp(alpha,0.2,0.14);}
draw_sprite_ext(sprite_index,global.slot_id[4],x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*alpha);
if global.slot_size[4]> 1 {draw_text(x+8,y+24,"x"+string(global.slot_size[4]));}