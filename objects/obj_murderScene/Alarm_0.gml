/// @description Insert description here
// You can write your code in this editor
if(second_scene&&dialogue_index<4){
	dialogue_index+=1;
	next_message=ds_list_find_value(second_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(second_scene&&dialogue_index=4){
	second_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	third_scene=true;
	dialogue_index=0;
}

if(fourth_scene&&dialogue_index!=2&&dialogue_index<4){
	dialogue_index+=1;
	next_message=ds_list_find_value(fourth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(fourth_scene&&dialogue_index=2){
	dialogue_index+=1;
	next_message=ds_list_find_value(fourth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
}
else if(fourth_scene&&dialogue_index=4){
	fourth_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	fifth_scene=true;
	dialogue_index=0;
}

if(sixth_scene&&dialogue_index<1){
	dialogue_index+=1;
	next_message=ds_list_find_value(sixth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(sixth_scene&&dialogue_index=1){
	sixth_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	seventh_scene=true;
	dialogue_index=0;
}

if(caught_wimping_scene&&dialogue_index<1){
	dialogue_index+=1;
	next_message=ds_list_find_value(caught_wimping_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(caught_wimping_scene&&(dialogue_index=1||dialogue_index=2)){
	dialogue_index+=1;
	next_message=ds_list_find_value(caught_wimping_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
}
else if(caught_wimping_scene&&dialogue_index=3){
	caught_wimping_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	seventh_scene=true;
	dialogue_index=0;
}

if(eighth_scene&&dialogue_index<5){
	dialogue_index+=1;
	next_message=ds_list_find_value(eighth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(eighth_scene&&dialogue_index=5){
	eighth_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	ninth_scene=true;
	obj_playerBegin.x=800;
	obj_playerBegin.y=416;
	dialogue_index=0;
}
if(tenth_scene&&dialogue_index<4){
	dialogue_index+=1;
	next_message=ds_list_find_value(tenth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(tenth_scene&&dialogue_index=4){
	tenth_scene=false;
	message_side_left=undefined;
	message_side_right=undefined;
	eleventh_scene=true;
	obj_friendBegin.x=800;
	obj_friendBegin.y=416;
	dialogue_index=0;
}
if(twelfth_scene&&dialogue_index<1){
	dialogue_index+=1;
	next_message=ds_list_find_value(twelfth_scene_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(twelfth_scene&&dialogue_index=1){
	obj_playerBegin.can_move=true;
	twelfth_scene=false;
	dialogue_index=0;
	message_side_right=undefined;
	idle_scene=true;
}

if(thief_battle_scene&&dialogue_index!=1&&dialogue_index<4){
	dialogue_index+=1;
	next_message=ds_list_find_value(thief_battle_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
	}
	alarm[0]=room_speed*3;
}
else if(thief_battle_scene&&dialogue_index=1){
	message_side_left=undefined;
	message_side_right=undefined;
	global.battle_enemy="thief";
	global.first_battle=true;
	room_goto(rm_battle);
}
else if(thief_battle_scene&&dialogue_index=4){
	thief_battle_scene=false;
	dialogue_index=0;
	message_side_left=undefined;
	message_side_right=undefined;
	thirteenth_scene=true;
}

if(player_death_scene&&dialogue_index<1){
	dialogue_index+=1;
	next_message=ds_list_find_value(player_death_messages,dialogue_index)
	if(ds_map_find_value(next_message,"side")="left"){
		message_side_left=next_message;
	}
	else if(ds_map_find_value(next_message,"side")="right"){
		message_side_right=next_message;
		message_side_left=undefined;
	}
	alarm[0]=room_speed*3;
}
