/// @description Insert description here
// You can write your code in this editor
if(room=rm_MurderScene&&thief_battle_scene){
	obj_playerBegin.can_move=false;
	obj_thiefBegin.can_battle=false;
	obj_thiefBegin.in_battle=false;
	new_flash_layer=instance_create_layer(0,0,"Instances",obj_battleFlash);
	instance_destroy(obj_friendBegin);
	instance_destroy(obj_damselBegin);
	obj_thiefBegin.image_angle=90;
	obj_thiefBegin.x-=25;
	obj_thiefBegin.y+=25;
	depth=-1;
	dialogue_index+=1;
	next_message=ds_list_find_value(thief_battle_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		show_debug_message("working");
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}