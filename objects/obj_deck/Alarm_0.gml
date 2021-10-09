/// @description small delay when changing from draw to choice so bleed will be in effect
// You can write your code in this editor
if(obj_battle.whose_turn="player"&&obj_battle.new_player.stuck){
	obj_battle.turn_phase="draw";
	obj_battle.whose_turn="enemy";
	obj_battle.new_player.stuck=false;
}
else if(obj_battle.whose_turn="enemy"&&obj_battle.new_enemy.stuck){
	obj_battle.turn_phase="draw";
	obj_battle.whose_turn="player";
	obj_battle.new_enemy.stuck=false;
}
else{
	obj_battle.turn_phase="choice";
}