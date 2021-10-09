/// @description Insert description here
// You can write your code in this editor

if(type="player"&&player_life<=0&&global.first_battle){
	player_life=1;
	invincible=true;
}

if(!turn_passed&&obj_battle.whose_turn=type&&obj_battle.turn_phase="draw"){
	if(stuck_resist){
		stuck_resist_turns--;
		if(stuck_resist_turns<=0){
			stuck_resist=false;
		}
	}
	if(attack_buff!=noone&&!first_turn_after){
		attack_buff_turns--;
		if(attack_buff_turns<=0){
			attack_buff=noone;
		}
	}
	else if(attack_buff!=noone&&first_turn_after){
		first_turn_after=false;
	}
	if(attack_reduce!=noone&&!first_turn_after_reduce){
		attack_reduce_turns--;
		if(attack_reduce_turns<=0){
			attack_reduce=noone;
		}
	}
	else if(attack_reduce!=noone&&first_turn_after_reduce){
		first_turn_after_reduce=false;
	}
	turn_passed=true;
}
else if(turn_passed&&obj_battle.whose_turn=type&&obj_battle.turn_phase="choice"){
	turn_passed=false;
}
with(deck){
if(ds_list_size(deck)<=0){
			with(obj_graveyard){
				if((other.screen_position="bottom"&&owner="player")||(other.screen_position="top"&&owner="enemy")){
					for(var index=0;index<ds_stack_size(graveyard);index++){
						returning_card=ds_stack_pop(graveyard)
						ds_list_add(other.deck,returning_card.card);
						instance_destroy(returning_card);
					}
				}
			}
		}
}

if(obj_battle.turn_phase="draw"&&obj_battle.whose_turn!=type&&bleeding&&!bled&&!obj_battle.gameOver){
	bled=true;
	player_life-=bleeding_damage;
	if(type="player"){
		new_marker=instance_create_layer(x-10,bbox_top+25,"Instances",obj_healthMarker);
			new_marker.message="-"+string(bleeding_damage);
			new_marker.color=c_fuchsia;
		new_marker.move_direction="up";
		new_marker.timer=room_speed*3;
	}
	else{
		new_marker=instance_create_layer(x+10,bbox_bottom-25,"Instances",obj_healthMarker);
			new_marker.message="-"+string(bleeding_damage);
			new_marker.color=c_fuchsia;
		
		new_marker.move_direction="down";
		new_marker.timer=room_speed*3;
	}
	bleeding_turns--;
	if(bleeding_turns<=0){
		bleeding=false;
		bled=false;
	}
}
else if(obj_battle.turn_phase="choice"&&obj_battle.whose_turn!=type&&bleeding&&bled){
	bled=false;
}
