///@desc Soul Collision

//Hurt the player
if(crit){
	Player_Hurt(10*1.5);
}else{
	Player_Hurt(10);
}
//Let the soul show the hurt animation
Battle_CallSoulEventHurt();

if(t_break){
instance_destroy();
}