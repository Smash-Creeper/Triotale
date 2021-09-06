var xport= view_get_xport(view_camera[0]), yport= view_get_yport(view_camera[0]), wport= view_get_wport(view_camera[0]), hport= view_get_hport(view_camera[0]);
if !surface_exists(inv_surface) {inv_surface= surface_create(wport,hport); surface_set_target(inv_surface);}else{surface_set_target(inv_surface);}
draw_set_alpha(0.2); draw_set_color(0); draw_set_valign(fa_top); draw_set_halign(fa_left); draw_set_font(fnt_minecraftia_12);
draw_rectangle(xport,yport,wport,hport,0);
draw_set_alpha(1); draw_set_color(c_white);
//draw_text(0,0,string(_x)+", "+string(_y));
draw_sprite_ext(spr_gui_bg,0,xport+(wport/2),yport+(hport/2),1,1,0,c_white,1);
draw_sprite_ext(spr_gui0,0,xport+(wport/2)-84,yport+(hport/2)-103,1,1,0,c_white,1);
draw_sprite_ext(spr_gui_item0,0,xport+(wport/2)-120,yport+(hport/2)-103,1,1,0,c_white,1);
draw_sprite_ext(spr_gui_item1,0,xport+(wport/2)+18,yport+(hport/2)-103,1,1,0,c_white,1);
draw_sprite_ext(spr_gui_xpbar,0,xport+(wport/2)-177,yport+(hport/2)+81,1,1,0,c_white,1);
draw_sprite_part(spr_gui_xpbar,1,0,0,sprite_get_width(spr_gui_xpbar)*(global.xp/global.xpmax),sprite_get_height(spr_gui_xpbar),xport+(wport/2)-177,yport+(hport/2)+81);
draw_set_color(make_color_rgb(126,252,32)); draw_set_halign(fa_center); draw_set_valign(fa_top);
draw_text_outline(xport+(wport/2)+6,yport+(hport/2)+65,string(global.lv));
draw_text_outline(xport+(wport/2)+6,yport+(hport/2)+115,"\""+string(global.name)+"\"");
draw_set_color(c_white); draw_set_halign(fa_left); draw_set_valign(fa_top);
var xx= 0; for (i= 0; i< 10; i++;) {draw_sprite_ext(spr_gui_hearts,0,xport+(wport/2)-177+xx,yport+(hport/2)+95,1,1,0,c_white,1); xx+= 16;}
var xx= 0; for (i= 0; i< 10; i++;) {curi0= i; event_user(0); draw_sprite_ext(spr_gui_hearts,subimg0,xport+(wport/2)-177+xx,yport+(hport/2)+95,1,1,0,c_white,1); xx+= 16;}
var xx= 0; for (i= 0; i< 10; i++;) {draw_sprite_ext(spr_gui_armor,0,xport+(wport/2)+27+xx,yport+(hport/2)+95,1,1,0,c_white,1); xx+= 16;}
var xx= 0; for (i= 0; i< 10; i++;) {curi1= i; event_user(1); draw_sprite_ext(spr_gui_armor,subimg1,xport+(wport/2)+27+xx,yport+(hport/2)+95,1,1,0,c_white,1); xx+= 16;}
for (i= 0; i<= 13; i++;) {curi2= i; event_user(2); if global.slot_id[i]!= -1 {draw_sprite_ext(spr_block_inv,global.slot_id[i],xport+x_+18,yport+y_+18,1,1,0,c_white,1); draw_set_color(c_white); draw_set_halign(fa_right); draw_set_font(fnt_minecraftia_6); if global.slot_size[i]> 1 {draw_text_outline(xport+x_+32,yport+y_+22,"x"+string(global.slot_size[i]),1,1);} draw_set_halign(fa_left); draw_set_font(fnt_minecraftia_12);}}
if hold_id!= -1 {draw_sprite_ext(spr_block_inv,hold_id,xport+_x-6-16,yport+_y-6-16,1,1,0,c_white,0.7); draw_set_color(c_white); draw_set_halign(fa_right); draw_set_font(fnt_minecraftia_6); draw_set_alpha(0.7); if hold_size> 1 {draw_text_outline(xport+_x-6-16+15,yport+_y-6-16+10,"x"+string(hold_size),1,1);} draw_set_halign(fa_left); draw_set_font(fnt_minecraftia_12); draw_set_alpha(1);}
draw_sprite_ext(spr_gui_item,0,xport+_x-6,yport+_y-6,1,1,0,c_white,1);
draw_sprite_ext(spr_gui_fg,0,xport+(wport/2),yport+(hport/2),1,1,0,c_white,1);
surface_reset_target(); draw_surface_ext(inv_surface,xport,yport,1,1,0,c_white,1);
