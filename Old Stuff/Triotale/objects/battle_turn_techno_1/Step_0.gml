if(start = 1){
	time += 1
	if(time = 70){
	var a = instance_create_depth(battle_board.x-battle_board.left,battle_board.y+battle_board.down,0,battle_bullet_axe)
a.ability = 2
a.turnspeed = 0
a.scale_x = 2
a.scale_y = 2
a.distance = 15
a.dir = 0
battle_axe_smash(a,0)
battle_enemy_techno.state = 1
	}
	if(time = 100){
	var a = instance_create_depth(battle_board.x+battle_board.right,battle_board.y+battle_board.down,0,battle_bullet_axe)
a.ability = 2
a.turnspeed = 0
a.scale_x = 2
a.scale_y = 2
a.distance = 15
a.dir = 90
battle_axe_smash(a,0)
battle_enemy_techno.state = 1
	}
	if(time = 115){
	var a = instance_create_depth(battle_board.x+battle_board.right,battle_board.y+battle_board.down,0,battle_bullet_axe)
a.ability = 2
a.turnspeed = 0
a.scale_x = -2
a.scale_y = 2
a.distance = 15
a.dir = 180
battle_axe_smash(a,1)
battle_enemy_techno.state = 1
	}
	if(time = 130){
	var a = instance_create_depth(battle_board.x-battle_board.left,battle_board.y-battle_board.up,0,battle_bullet_axe)
a.ability = 2
a.turnspeed = 0
a.scale_x = 2
a.scale_y = 2
a.distance = 15
a.dir = 270
battle_axe_smash(a,0)
battle_enemy_techno.state = 1
	}
	if(time = 180){
		var a = instance_create_depth(battle_board.x-battle_board.left-100,battle_board.y,0,battle_bullet_axe)
	a.ability = 1
	a.turnspeed = -8
	a.scale_x = -2
	a.scale_y = 2
	a.hsp = 8
	a.outside = false
	}
	if(time = 270){
		var a = instance_create_depth(battle_board.x+86,battle_board.y-battle_board.up-60,0,battle_bullet_axe)
	a.ability = 1
	a.turnspeed = 8
	a.scale_x = 2
	a.scale_y = 2
	a.hsp = -11
	a.vsp = 8
	a.outside = false
	a.dir = 0
		var a = instance_create_depth(battle_board.x-86,battle_board.y+battle_board.up+60,0,battle_bullet_axe)
	a.ability = 1
	a.turnspeed = -8
	a.scale_x = -2
	a.scale_y = 2
	a.hsp = 11
	a.vsp = -8
	a.outside = false
	a.dir = 180
	}
}