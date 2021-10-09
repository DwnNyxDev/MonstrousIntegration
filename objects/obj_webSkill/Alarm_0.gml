/// @description Insert description here
// You can write your code in this editor
slashing=false;
transfer_amount=0;
if(slashes<=0){
	instance_destroy();
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
				enemy.player_life-=damage;
				new_marker.message="-"+string(damage);
				new_marker.color=c_red;
			}
			else{
				new_marker.message="Invincible";
				new_marker.color=c_gray;
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