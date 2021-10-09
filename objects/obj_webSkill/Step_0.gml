/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(can_move){
	if(owner="player"){
		if(y>room_height/2){
			y-=3;
		}
		else if(!web_made){
			new_web=instance_create_layer(room_width/2,room_height/4,"Instances",obj_web);
			if(type="web"){
				new_web.sprite_index=spr_web;
			}
			else if(type="poison"){
				new_web.sprite_index=spr_poisonSkull
			}
			new_web.owner=id;
			new_web.depth=depth-1;
			web_made=true;
		}
		else if(new_web.image_xscale>=1){
			instance_destroy();

			obj_battle.turn_phase="draw";
			if(owner="player"){
				obj_battle.whose_turn="enemy";
			}
			else if(owner="enemy"){
				obj_battle.whose_turn="player";
			}
			if(sticky){
				if(!enemy.stuck_resist){
					enemy.stuck=true;
				}
				if(owner="player"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
					new_marker.move_direction="down";
				}
				else if(owner="enemy"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
					new_marker.move_direction="up";
				}
				if(!enemy.stuck_resist){
					new_marker.message="Stuck";
					new_marker.color=c_purple;
				}
				else{
					new_marker.message="Resist";
					new_marker.color=c_black;
				}
				new_marker.timer=room_speed*2;
			}
			else if(poison){
				enemy.poisoned=true;
				enemy.poisoned_attacks=poison_attacks;
				enemy.poisoned_modifier=poison_modifier;
				if(owner="player"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
					new_marker.move_direction="down";
				}
				else if(owner="enemy"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
					new_marker.move_direction="up";
				}
				new_marker.message="Poisoned";
				new_marker.color=c_black;
				new_marker.timer=room_speed*2;
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
				if(obj_battle.new_player.attack_buff!=noone){
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
				if(enemy.attack_reduce!=noone){
					if(enemy.attack_reduce="-1"){
						damage-=1;
					}
					else if(enemy.attack_reduce="-2"){
						damage-=2;
					}
					else if(enemy.attack_reduce="*.75"){
						damage*=.75;
					}
					else if(enemy.attack_reduce="*.5"){
						damage*=.5;
					}
					else if(enemy.attack_reduce="*.25"){
						damage*=.25;
					}
					
					new_marker.color=c_navy;
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
		else if(!web_made){
			new_web=instance_create_layer(room_width/2,room_height*.75,"Instances",obj_web);
			new_web.owner=id;
			if(type="web"){
				new_web.sprite_index=spr_web;
			}
			else if(type="poison"){
				new_web.sprite_index=spr_poisonSkull
			}
			web_made=true;
		}
		else if(new_web.image_xscale>=1){
			instance_destroy();
			obj_battle.turn_phase="draw";
			if(owner="player"){
				obj_battle.whose_turn="enemy";
			}
			else if(owner="enemy"){
				obj_battle.whose_turn="player";
			}
			if(sticky){
				enemy.stuck=true;
				if(owner="player"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
					new_marker.move_direction="down";
				}
				else if(owner="enemy"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
					new_marker.move_direction="up";
				}
				new_marker.message="Stuck";
				new_marker.color=c_purple;
				new_marker.timer=room_speed*2;
			}
			else if(poison){
				enemy.poisoned=true;
				enemy.poisoned_attacks=poison_attacks;
				enemy.poisoned_modifier=poison_modifier;
				if(owner="player"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
					new_marker.move_direction="down";
				}
				else if(owner="enemy"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
					new_marker.move_direction="up";
				}
				new_marker.message="Poisoned";
				new_marker.color=c_black;
				new_marker.timer=room_speed*2;
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
				if(obj_battle.new_enemy.attack_buff!=noone){
					if(obj_battle.new_enemy.attack_buff="+1"){
						damage+=1;
					}
					else if(obj_battle.new_enemy.attack_buff="+2"){
						damage+=2;
					}
					else if(obj_battle.new_enemy.attack_buff="*1.25"){
						damage*=1.25;
					}
					else if(obj_battle.new_enemy.attack_buff="*1.5"){
						damage*=1.5;
					}
					new_marker.color=c_silver;
				}
				if(enemy.attack_reduce!=noone){
					if(enemy.attack_reduce="-1"){
						damage-=1;
					}
					else if(enemy.attack_reduce="-2"){
						damage-=2;
					}
					else if(enemy.attack_reduce="*.75"){
						damage*=.75;
					}
					else if(enemy.attack_reduce="*.5"){
						damage*=.5;
					}
					else if(enemy.attack_reduce="*.25"){
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