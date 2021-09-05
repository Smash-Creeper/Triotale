//Bullet inside:
//depth=DEPTH_BATTLE.BULLET;

//For bullet that will show outside the box,
//use DEPTH_BATTLE.BULLET_OUTSIDE_LOW or DEPTH_BATTLE.BULLET_OUTSIDE_HIGH instead.
//DEPTH_BATTLE.BULLET_OUTSIDE_LOW means the bullet is under the soul.
//DEPTH_BATTLE.BULLET_OUTSIDE_HIGH means the bullet is over the soul.
depth=DEPTH_BATTLE.BULLET_OUTSIDE_LOW;

//See the draw event.
dir = 0
_dir = 0

ability = 0

hsp = 0
vsp = 0

ogx = x
ogy = y

turnspeed = 0

t_break = false

scale_x = 1
scale_y = 1

distance = sprite_height
var c = irandom_range(1,10)
if(c = 7){
crit = true
}else{
crit = false	
}

image_alpha = 0

if(crit){
Anim_Create(battle_enemy_techno,"y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,240,-10,10)
Anim_Create(battle_enemy_techno,"y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,230,10,10,10)
}

outside = true

alarm[0] = 1