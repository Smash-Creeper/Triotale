///@arg axe
///@arg direction
///@arg speed
function battle_axe_smash(){
	var a = argument[0]
	var d = argument[1]
	if(argument_count>=3){
	var s = argument[2]
	}else{
	var s = 15	
	}
	switch(d){
		case 0:
Anim_Create(a,"dir",ANIM_TWEEN.SINE,ANIM_EASE.IN,a.dir,90,s)
Anim_Create(a,"dir",ANIM_TWEEN.SINE,ANIM_EASE.OUT,a.dir+90,-40,s,s)
Anim_Create(a,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1,-1,10,25)
break;
		case 1:
Anim_Create(a,"dir",ANIM_TWEEN.SINE,ANIM_EASE.IN,a.dir,-90,s)
Anim_Create(a,"dir",ANIM_TWEEN.SINE,ANIM_EASE.OUT,a.dir-90,+40,s,s)
Anim_Create(a,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1,-1,10,25)
break;
	}
}