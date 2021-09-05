if(start = 1){
	time += 1
	switch(time){
		
		case 1:
		battle_soul.follow_board = true
		break;
		
		case 2:
		Anim_Create(battle_board,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.x,320-35-35,15)
		Anim_Create(battle_board,"y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.y,-65,15)
		break;
		
		case 40:
		Anim_Create(battle_board,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.x,-320+85,15)
		Anim_Create(battle_board,"y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.y,-256+71,15)
		break;
		
		case 100:
		Anim_Create(battle_board,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.x,-320+65-12,15)
		Anim_Create(battle_board,"y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.y,+330-75,15)
		break;
	}
}