/// @description Insert description here
// You can write your code in this editor
for(var index=0;index<ds_list_size(hand);index++){
	if(ds_list_find_value(hand,index).in_graveyard){
		ds_list_delete(hand,index);
	}
}
if(obj_battle.turn_phase="draw"&&obj_battle.whose_turn=type&&alarm_get(0)<=0&&ai){
	alarm[0]=room_speed*2;
	draw_card_ai=true;
}
else if(obj_battle.turn_phase="choice"&&obj_battle.whose_turn=type&&alarm_get(0)<=0&&ai){
	alarm[0]=room_speed*2;
	choose_card_ai=true;
}
if(invincible){
	bleeding_damage=0;
}
if(instance_exists(obj_winScreen)){
	image_alpha=1-obj_winScreen.image_xscale;
}