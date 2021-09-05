var preencounter= get_integer(@"SET BATTLE ID:
0 = Enemy
1 = Enemy Simple
2 = Enemy Gb
3 = Enemy Technoblade
4 = Enemy Tommy
5 = Enemy Tubbo",0);
if !is_undefined(preencounter) {Encounter_Start(preencounter);}else{room_restart();}