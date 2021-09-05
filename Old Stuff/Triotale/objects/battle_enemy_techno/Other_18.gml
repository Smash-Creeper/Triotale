///@desc Turn Preparation Start

//Prepare the attack

//Say something
switch(turn){
case 0:
var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text="{voice 2}TECHNOBLADE NEVER DIES!";
inst.template=0;
instance_create_depth(0,0,0,battle_turn_techno_1);
break;
case 1:
var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text="{voice 2}SUBSCRIBE TO TECHNOBLADE";
inst.template=0;
instance_create_depth(0,0,0,battle_turn_techno_2);
break;
}