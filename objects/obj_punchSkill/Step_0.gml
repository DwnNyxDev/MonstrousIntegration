/// @description Insert description here
// You can write your code in this editor
if(can_move){
	if(owner="player"){
		y-=3;
		if(y<room_height/2&&!web_made&&(sticky||poison)){
			new_web=instance_create_layer(room_width/2,room_height/4,"Instances",obj_web);
			if(sticky){
				new_web.sprite_index=spr_web;
			}
			else if(poison){
				new_web.sprite_index=spr_poisonSkull
			}
			new_web.owner=id;
			new_web.depth=depth-1;
			web_made=true;
		}
		if(y<0){
			instance_destroy();
			if(instance_exists(new_web)&&new_web!=noone){
				instance_destroy(new_web);
				}
			obj_battle.turn_phase="draw";
			obj_battle.turn+=1;
			obj_battle.whose_turn="enemy";
			new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom,"Instances",obj_healthMarker);
			new_marker.depth=depth-1;
			if(!enemy.invincible){
				if(enemy.poisoned){
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
				else{
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
				new_marker.message="-"+string(damage);
				
			}
			else{
				new_marker.message="Invincible";
				new_marker.color=c_gray;
			}
			if(sticky||poison){
				if(sticky){
					enemy.stuck=true;
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
						new_marker1.move_direction="down";
					new_marker1.message="Stuck";
					new_marker1.color=c_purple;
					new_marker1.timer=room_speed*2;
				}
				else if(poison){
					enemy.poisoned=true;
					enemy.poisoned_attacks=poison_attacks;
					enemy.poisoned_modifier=poison_modifier;
					if(owner="player"){
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
						new_marker1.move_direction="down";
					}
					else if(owner="enemy"){
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
						new_marker1.move_direction="up";
					}
					new_marker1.message="Poisoned";
					new_marker1.color=c_black;
					new_marker1.timer=room_speed*2;
				}
			}
			new_marker.move_direction="down";
				new_marker.timer=room_speed*2;
			camera_set_view_target(view_camera[0],noone);
			global.camera_movement=false;
			/*
			with(obj_battle){
					shake=true;
					shakeDur=room_speed*1;
					shakeForce=3;
				}
				*/
		}
	}
	else if(owner="enemy"){
		y+=3;
		if(y>room_height){
			instance_destroy();
			obj_battle.turn_phase="draw";
			obj_battle.whose_turn="player";
			new_marker=instance_create_layer(enemy.x,enemy.bbox_top,"Instances",obj_healthMarker);
			if(!enemy.invincible){
				if(enemy.poisoned){
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
				else{
					new_marker.color=c_red;
				}
				if(obj_battle.new_enemy.attack_buff!=noone&&damage>0){
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
				new_marker.message="-"+string(damage);
				
			}
			else{
				new_marker.message="Invincible";
				new_marker.color=c_gray;
			}
			new_marker.move_direction="up";
			new_marker.timer=room_speed*2;
			camera_set_view_target(view_camera[0],noone);
			global.camera_movement=false;
			/*
			with(obj_battle){
					shake=true;
					shakeDur=room_speed*1;
					shakeForce=3;
				}
			*/
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