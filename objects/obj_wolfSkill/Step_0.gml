/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(can_move){
	if(owner="player"){
		if(y>room_height/2){
			y-=3;
		}
		else if(!attack_made&&type!="wild"&&type!="hunt"){
			new_attack=instance_create_layer(room_width/2,room_height/4,"Instances",obj_web);
			 if(type="fangs"){
				new_attack.sprite_index=spr_bite;
			}
			new_attack.owner=id;
			new_attack.depth=depth-1;
			attack_made=true;
		}
		else if(!attack_made&&(type="wild"||type="hunt")){
			image_angle+=180;
			image_speed=0;
			image_index=1
			new_attack=instance_create_layer(room_width/2,room_height*.75,"Instances",obj_web);
			 if(type="wild"){
				new_attack.sprite_index=spr_attackBuff;
			}
			else if(type="hunt"){
				new_attack.sprite_index=spr_shieldBuff;
			}
			new_attack.owner=id;
			new_attack.depth=depth-1;
			attack_made=true;
		}
		else if(new_attack.image_xscale>=1){
			instance_destroy();
			if(stuck_resist){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.stuck_resist=true;
					obj_battle.new_enemy.stuck_resist_turns=stuck_resist_turns;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.stuck_resist=true;
					obj_battle.new_player.stuck_resist_turns=stuck_resist_turns;
				}
			}
			else if(attack_buff!=noone){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.attack_buff=attack_buff;
					obj_battle.new_enemy.attack_buff_turns=attack_buff_turns;
					obj_battle.new_enemy.first_turn_after=true;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.attack_buff=attack_buff;
					obj_battle.new_player.attack_buff_turns=attack_buff_turns;
					obj_battle.new_player.first_turn_after=true;
				}
			}
			else if(attack_reduce!=noone){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.attack_reduce=attack_reduce;
					obj_battle.new_enemy.attack_reduce_turns=attack_reduce_turns;
					obj_battle.new_enemy.first_turn_after_reduce=true;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.attack_reduce=attack_reduce;
					obj_battle.new_player.attack_reduce_turns=attack_reduce_turns;
					obj_battle.new_player.first_turn_after_reduce=true;
				}
			}
			obj_battle.turn_phase="draw";
			if(owner="player"){
				obj_battle.whose_turn="enemy";
			}
			else if(owner="enemy"){
				obj_battle.whose_turn="player";
			}
		if(owner="player"&&damage>0){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom,"Instances",obj_healthMarker);
				new_marker.move_direction="down";
			}
			else if(owner="enemy"&&damage>0){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_top,"Instances",obj_healthMarker);
				new_marker.move_direction="up";
			}
			if(enemy.poisoned&&damage>0){
					enemy.poisoned_attacks-=1;
					if(enemy.poisoned_modifier="+1"){
						damage+=1;
					}
					else if(enemy.poisoned_modifier="+2"){
						damage+=2;
					}
					else if(enemy.poisoned_modifier="*1.25"){
						damage*=1.25;
					}
					else if(enemy.poisoned_modifier="*1.5"){
						damage*=1.5;
					}
					else if(enemy.poisoned_modifier="*1.75"){
						damage*=1.75;
					}
					if(enemy.poisoned_attacks<=0){
						enemy.poisoned=false;
					}
					new_marker.color=c_black;
				}
				else if(damage>0){
					new_marker.color=c_red;
				}
				if(obj_battle.new_player.attack_buff!=noone&&damage>0){
					if(obj_battle.new_player.attack_buff="+1"){
						damage+=1;
					}
					else if(obj_battle.new_player.attack_buff="+2"){
						damage+=2;
					}
					else if(obj_battle.new_player.attack_buff="*1.25"){
						damage*=1.25;
					}
					else if(obj_battle.new_player.attack_buff="*1.5"){
						damage*=1.5;
					}
					new_marker.color=c_silver;
				}
				if(enemy.attack_reduce!=noone&&damage>0){
					if(enemy.attack_reduce="-1"){
						damage-=1;
					}
					else if(enemy.attack_reduce="-2"&&damage>0){
						damage-=2;
					}
					else if(enemy.attack_reduce="*.75"&&damage>0){
						damage*=.75;
					}
					else if(enemy.attack_reduce="*.5"&&damage>0){
						damage*=.5;
					}
					else if(enemy.attack_reduce="*.25"&&damage>0){
						damage*=.25;
					}
					
					new_marker.color=c_navy;
				}
				if(damage<0){
					damage=0;
				}
				enemy.player_life-=damage;
				if(damage>0){
					new_marker.message="-"+string(damage);

					new_marker.timer=room_speed*2;
				}
			camera_set_view_target(view_camera[0],noone);
			global.camera_movement=false;
		}
	}
	else if(owner="enemy"){
		if(y<room_height/2){
			y+=3;
		}
		else if(!attack_made&&type!="wild"&&type!="hunt"){
			new_attack=instance_create_layer(room_width/2,room_height*.75,"Instances",obj_web);
			 if(type="fangs"){
				new_attack.sprite_index=spr_bite;
			}
			new_attack.owner=id;
			new_attack.depth=depth-1;
			attack_made=true;
		}
		else if(!attack_made&&(type="wild"||type="hunt")){
			image_angle+=180;
			image_speed=0;
			image_index=1
			new_attack=instance_create_layer(room_width/2,room_height*.25,"Instances",obj_web);
			 if(type="wild"){
				new_attack.sprite_index=spr_attackBuff;
			}
			else  if(type="hunt"){
				new_attack.sprite_index=spr_shieldBuff;
			}
			new_attack.owner=id;
			new_attack.depth=depth-1;
			attack_made=true;
		}
		else if(new_attack.image_xscale>=1){
			instance_destroy();
			if(stuck_resist){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.stuck_resist=true;
					obj_battle.new_enemy.stuck_resist_turns=stuck_resist_turns;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.stuck_resist=true;
					obj_battle.new_player.stuck_resist_turns=stuck_resist_turns;
				}
			}
			else if(attack_buff!=noone){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.attack_buff=attack_buff;
					obj_battle.new_enemy.attack_buff_turns=attack_buff_turns;
					obj_battle.new_enemy.first_turn_after=true;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.attack_buff=attack_buff;
					obj_battle.new_player.attack_buff_turns=attack_buff_turns;
					obj_battle.new_player.first_turn_after=true;
				}
			}
			else if(attack_reduce!=noone){
				if(enemy=obj_battle.new_player){
					obj_battle.new_enemy.attack_reduce=attack_reduce;
					obj_battle.new_enemy.attack_reduce_turns=attack_reduce_turns;
					obj_battle.new_enemy.first_turn_after_reduce=true;
				}
				else if(enemy=obj_battle.new_enemy){
					obj_battle.new_player.attack_reduce=attack_reduce;
					obj_battle.new_player.attack_reduce_turns=attack_reduce_turns;
					obj_battle.new_player.first_turn_after_reduce=true;
				}
			}
			obj_battle.turn_phase="draw";
			if(owner="player"){
				obj_battle.whose_turn="enemy";
			}
			else if(owner="enemy"){
				obj_battle.whose_turn="player";
			}
		if(owner="player"&&damage>0){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom,"Instances",obj_healthMarker);
				new_marker.move_direction="down";
			}
			else if(owner="enemy"&&damage>0){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_top,"Instances",obj_healthMarker);
				new_marker.move_direction="up";
			}
			if(enemy.poisoned&&damage>0){
					enemy.poisoned_attacks-=1;
					if(enemy.poisoned_modifier="+1"){
						damage+=1;
					}
					else if(enemy.poisoned_modifier="+2"){
						damage+=2;
					}
					else if(enemy.poisoned_modifier="*1.25"){
						damage*=1.25;
					}
					else if(enemy.poisoned_modifier="*1.5"){
						damage*=1.5;
					}
					else if(enemy.poisoned_modifier="*1.75"){
						damage*=1.75;
					}
					if(enemy.poisoned_attacks<=0){
						enemy.poisoned=false;
					}
					new_marker.color=c_black;
				}
				else if(damage>0){
					new_marker.color=c_red;
				}
				if(obj_battle.new_player.attack_buff!=noone&&damage>0){
					if(obj_battle.new_player.attack_buff="+1"){
						damage+=1;
					}
					else if(obj_battle.new_player.attack_buff="+2"){
						damage+=2;
					}
					else if(obj_battle.new_player.attack_buff="*1.25"){
						damage*=1.25;
					}
					else if(obj_battle.new_player.attack_buff="*1.5"){
						damage*=1.5;
					}
					new_marker.color=c_silver;
				}
				if(enemy.attack_reduce!=noone&&damage>0){
					if(enemy.attack_reduce="-1"){
						damage-=1;
					}
					else if(enemy.attack_reduce="-2"&&damage>0){
						damage-=2;
					}
					else if(enemy.attack_reduce="*.75"&&damage>0){
						damage*=.75;
					}
					else if(enemy.attack_reduce="*.5"&&damage>0){
						damage*=.5;
					}
					else if(enemy.attack_reduce="*.25"&&damage>0){
						damage*=.25;
					}
					
					new_marker.color=c_navy;
				}
				if(damage<0){
					damage=0;
				}
				enemy.player_life-=damage;
				if(damage>0){
					new_marker.message="-"+string(damage);

					new_marker.timer=room_speed*2;
				}
			camera_set_view_target(view_camera[0],noone);
			global.camera_movement=false;
		}
	
		
	}
}
/*
cam_x=camera_get_view_x(view_camera[0]);
cam_y=camera_get_view_y(view_camera[0]);
cam_w=camera_get_view_width(view_camera[0]);
cam_h=camera_get_view_height(view_camera[0]);

if(cam_x<x-200){
	camera_set_view_pos(view_camera[0],cam_x+2,cam_y);
	cam_x=camera_get_view_x(view_camera[0]);

	new_cam_y=lerp(0,y-200,cam_x/(x-200));
	if(cam_y<new_cam_y){
		camera_set_view_pos(view_camera[0],cam_x,new_cam_y);

	}
	camera_set_view_size(view_camera[0],lerp(1024,400,cam_x/(x-200)),lerp(576,400,cam_x/(x-200)));

}
else{
	camera_set_view_target(view_camera[0],id);
	camera_set_view_border(view_camera[0],200,200);
	can_move=true;
}
*/