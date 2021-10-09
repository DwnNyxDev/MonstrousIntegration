/// @description Insert description here
// You can write your code in this editor
slashing=false;
transfer_amount=0;
if(slashes<=0){
	instance_destroy();
	instance_destroy(new_web);
			obj_battle.turn_phase="draw";
			if(owner="player"){
				obj_battle.whose_turn="enemy";
			}
			else if(owner="enemy"){
				obj_battle.whose_turn="player";
			}
			if(bleed){
				enemy.bleeding=bleed;
				enemy.bleeding_turns=bleed_turns;
				enemy.bleeding_damage=bleed_damage;
				if(owner="player"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom+25,"Instances",obj_healthMarker);
					new_marker.move_direction="down";
				}
				else if(owner="enemy"){
					new_marker=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
					new_marker.move_direction="up";
				}
				new_marker.message="Bleed";
				new_marker.color=c_fuchsia;
				new_marker.timer=room_speed*2;
			}
		if(owner="player"){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_bottom,"Instances",obj_healthMarker);
				new_marker.move_direction="down";
			}
			else if(owner="enemy"){
				new_marker=instance_create_layer(enemy.x,enemy.bbox_top,"Instances",obj_healthMarker);
				new_marker.move_direction="up";
			}
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
				if(owner="player"){
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
				}
				else if(owner="enemy"){
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
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_bottom+50,"Instances",obj_healthMarker);
						new_marker1.move_direction="down";
					new_marker1.message="Stuck";
					new_marker1.color=c_purple;
					new_marker1.timer=room_speed*3;
				}
				else if(poison){
					enemy.poisoned=true;
					enemy.poisoned_attacks=poison_attacks;
					enemy.poisoned_modifier=poison_modifier;
					if(owner="player"){
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_bottom+50,"Instances",obj_healthMarker);
						new_marker1.move_direction="down";
					}
					else if(owner="enemy"){
						new_marker1=instance_create_layer(enemy.x,enemy.bbox_top-25,"Instances",obj_healthMarker);
						new_marker1.move_direction="up";
					}
					new_marker1.message="Poisoned";
					new_marker1.color=c_black;
					new_marker1.timer=room_speed*3;
				}
			}
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