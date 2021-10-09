/// @description Insert description here
// You can write your code in this editor

if(can_battle&&obj_playerBegin.y>bbox_top+40&&obj_playerBegin.y<bbox_bottom&&obj_playerBegin.x>x&&obj_playerBegin.x<x+150&&obj_playerBegin.can_battle&&!obj_playerBegin.in_battle){
	obj_playerBegin.xspeed=0;
	obj_playerBegin.yspeed=0;
	obj_playerBegin.sprite_index=spr_playerBegin_idle;
	obj_playerBegin.image_xscale=-1;
	obj_playerBegin.can_move=false;
	obj_playerBegin.in_battle=true;
	in_battle=true;
}

if(in_battle){
	if(bbox_bottom>obj_playerBegin.bbox_bottom+10&&go_to_enemy_y){
		sprite_index=spr_thiefBegin_walkingBackward;
		y-=1;
	}
	else if(bbox_bottom<obj_playerBegin.bbox_bottom-10&&go_to_enemy_y){
		sprite_index=spr_thiefBegin_walkingForward;
		y+=1;
	}
	else if(bbox_right<obj_playerBegin.bbox_left-15){
		go_to_enemy_y=false;
		sprite_index=spr_thiefBegin_walking;
		image_xscale=1;
		x+=1;
	}
	else{
		sprite_index=spr_thiefBegin_idle;
		image_xscale=1;
		with(obj_murderScene){
			if(idle_scene){
				idle_scene=false;
				thief_battle_scene=true;
				next_message=ds_list_find_value(thief_battle_messages,dialogue_index);
				if(ds_map_find_value(next_message,"side")="left"){
					message_side_left=next_message
				}
				else{
					message_side_right=next_message
				}
				alarm[0]=room_speed*3;
			}
		}
	}
	
}