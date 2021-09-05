function scr_mc_block(x,y,depth,durability,wait_stop,sprite,slot_id,xscale,yscale,image_speed){
	var ins= instance_create_depth(x,y,depth,obj_minecraft_block);
	ins.sprite_index= sprite;
	ins.image_index= slot_id;
	ins.image_speed= image_speed;
	ins.durability= durability;
	ins.curdurability= durability;
	ins.image_xscale= xscale;
	ins.image_yscale= yscale;
	ins.rm= wait_stop;
	return ins;
}