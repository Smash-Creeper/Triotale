if(debug_mode){
	if(keyboard_check_pressed(ord("S"))){
//		_previous_state = state
		state = 1
	}
	if(keyboard_check_pressed(ord("A"))){
		_previous_state = state
		state = 0
	}
	if(keyboard_check_pressed(ord("D"))){
		_previous_state = state
		state = 2
	}
	if(keyboard_check_pressed(ord("F"))){
		_larm_frame += 1
		if(_larm_frame > 2){
			_larm_frame = 0
		}
		if(_larm_frame = 2){
			depth = DEPTH_BATTLE.SOUL-50
		}else{
			depth = DEPTH_BATTLE.ENEMY
		}
	}
	if(keyboard_check_pressed(ord("G"))){
		_rarm_frame = !_rarm_frame
	}
	if(keyboard_check_pressed(ord("Q"))){
		dodge = !dodge
	}
}
if(state = 0){
	_frame = 0
}
if(state = 1){
siner1 = 0
siner2 = 0
_timer ++
if(_timer = 5){
	if(_frame > 5){
		_frame = 0
		state = 0
	}
	_frame++
	_timer = 0
}
}
_rod_target_x = battle_soul.x
_rod_target_y = battle_soul.y