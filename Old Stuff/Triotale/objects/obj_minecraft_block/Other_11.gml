randomize();
var insc= irandom_range(7,12);
for (var i= 0; i< insc; i++;) {
	var ins= instance_create_depth(irandom_range(x,x+sprite_get_width(sprite_index)),irandom_range(y,y+sprite_get_height(sprite_index)),depth-1,obj_minecraft_particle);
	with ins {
		direction= random(360);
		speed= 3;
		gravity_direction= 270;
		gravity= 0.2;
		spr= other.sprite_index;
		img= other.image_index;
		xx= irandom_range(0,sprite_get_width(other.sprite_index)/2+sprite_get_width(other.sprite_index)/4);
		yy= irandom_range(0,sprite_get_height(other.sprite_index)/2+sprite_get_height(other.sprite_index)/4);
		w= irandom_range(2,sprite_get_width(other.sprite_index)-xx);
		h= irandom_range(2,sprite_get_height(other.sprite_index)-yy);
		//show_debug_message(string(xx)+" - "+string(yy)+" - "+string(w)+" - "+string(h)+" - "+sprite_get_name(spr)+" - "+string(img));
	}
}
instance_destroy();