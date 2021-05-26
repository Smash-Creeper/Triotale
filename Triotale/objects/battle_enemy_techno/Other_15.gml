///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_hp<=0){
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=sprite_index;
			audio_play_sound(snd_vaporize,0,false);
			instance_destroy();
		}
		state = 0
		_rarm_frame = false
//		siner1 = 0
//		siner2 = 0
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add("* Technoblade - AT 30 DF 20&* The one who never dies.");
				break;
			case 1:
				Dialog_Add("* You challange technoblade.");
				break;
		}
}