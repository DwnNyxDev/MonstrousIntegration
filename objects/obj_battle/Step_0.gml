/// @description Insert description here
// You can write your code in this editor
if(battle_started){
	if(enemy_deck=noone){
			enemy_deck=ds_list_create();
			if(enemy="thief"){
				repeat(3){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Punch");
					ds_map_add(new_card,"level",1);
					ds_list_add(enemy_deck,new_card);
				}

				repeat(2){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Knife Slash");
					ds_map_add(new_card,"level",1);
					ds_list_add(enemy_deck,new_card);
				}
			}
			else if(enemy="spider"){
				var cards_to_make=0;
				var level_range_min=0;
				var level_range_max=0;
				if(global.dungeon_level=1){
					cards_to_make=6;
					level_range_min=1;
					level_range_max=2;
				}
				else if(global.dungeon_level=2){
					cards_to_make=10;
					level_range_min=2;
					level_range_max=3;
				}
				if(global.dungeon_level=3){
					cards_to_make=12;
					level_range_min=2;
					level_range_max=4;
				}
				repeat(cards_to_make/2){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Sticky Web");
					ds_map_add(new_card,"level",irandom_range(level_range_min,level_range_max));
					ds_list_add(enemy_deck,new_card);
				}
				repeat(cards_to_make/2){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Poison Strike");
					ds_map_add(new_card,"level",irandom_range(level_range_min,level_range_max));
					ds_list_add(enemy_deck,new_card);
				}
			}
			else if(enemy="wolf"){
				var cards_to_make=0;
				var level_range_min=0;
				var level_range_max=0;
				if(global.dungeon_level=1){
					cards_to_make=12;
					level_range_min=2;
					level_range_max=3;
				}
				else if(global.dungeon_level=2){
					cards_to_make=15;
					level_range_min=3;
					level_range_max=4;
				}
				if(global.dungeon_level=3){
					cards_to_make=18;
					level_range_min=3;
					level_range_max=5;
				}
				repeat(cards_to_make/3){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","For the Hunt");
					ds_map_add(new_card,"level",irandom_range(level_range_min,level_range_max));
					ds_list_add(enemy_deck,new_card);
				}
				repeat(cards_to_make/3){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Fangs");
					ds_map_add(new_card,"level",irandom_range(level_range_min,level_range_max));
					ds_list_add(enemy_deck,new_card);
				}
				repeat(cards_to_make/3){
					new_card=ds_map_create();
					ds_map_add(new_card,"name","Call of the Wild");
					ds_map_add(new_card,"level",irandom_range(level_range_min,level_range_max));
					ds_list_add(enemy_deck,new_card);
				}
			}
		
			new_enemy_deck=instance_create_layer(52,68,"Instances",obj_deck);
			new_enemy_deck.deck=enemy_deck;
			if(enemy="thief"){
				new_enemy_deck.sprite_index=spr_cardBack_thief;
			}
			else if(enemy="spider"){
				new_enemy_deck.sprite_index=spr_cardBack_spider;
			}
			else if(enemy="wolf"){
				new_enemy_deck.sprite_index=spr_cardBack_wolf
			}
			new_enemy=instance_create_layer(949,64,"Instances",obj_playerBattle);
			new_enemy.image_angle=180;
			new_enemy.type="enemy";
			if(global.battle_enemy!="multiplayer"){
				new_enemy.ai=true;
			}
			if(enemy="thief"){
				new_enemy.sprite_index=spr_thiefBegin_dialogueForward;
			}
			else if(enemy="spider"){
				new_enemy.sprite_index=spr_spider_dialogueForward;
			}
			else if(enemy="wolf"){
				new_enemy.sprite_index=spr_wolf_dialogueForward;
			}
			new_enemy_deck.owner=new_enemy;
			new_enemy.deck=new_enemy_deck;
			new_enemy_graveyard=instance_create_layer(52,168,"Instances",obj_graveyard);
			new_enemy.graveyard=new_enemy_graveyard;
			new_enemy_graveyard.owner="enemy";
			new_enemy.enemy=new_player;
			new_player.enemy=new_enemy;
			new_enemy_deck.enemy=new_player;
			new_deck.enemy=new_enemy;
			new_enemy_deck.screen_position="top";
			if(global.battle_enemy="spider"){
				if(global.dungeon_level=1){
					new_enemy.player_life=15;
				}
				else if(global.dungeon_level=2){
					new_enemy.player_life=25;
				}
				else if(global.dungeon_level=3){
					new_enemy.player_life=40;
				}
			}
			else if(global.battle_enemy="wolf"){
				if(global.dungeon_level=1){
					new_enemy.player_life=28;
				}
				else if(global.dungeon_level=2){
					new_enemy.player_life=48;
				}
				else if(global.dungeon_level=3){
					new_enemy.player_life=60;
				}
			}
		}

	if(new_player.player_life<=0&&!gameOver&&!global.first_battle){
		turn=noone;
		whose_turn=noone;
		gameOver=true;
		new_win=instance_create_layer(512,288,"Instances",obj_winScreen);
		new_win.depth=depth-1;
		new_win.winner=enemy;
		audio_stop_sound(battle_bg);
	}
	else if(new_enemy.player_life<=0&&!gameOver){
		turn=noone;
		whose_turn=noone;
		gameOver=true;
		new_win=instance_create_layer(512,288,"Instances",obj_winScreen);
		new_win.depth=depth-1;
		new_win.winner="player";
		audio_stop_sound(battle_bg);
	}
	if(turn=noone&&!gameOver){
		turn=choose("player","enemy");
	}


	if(shake){
	    shakeDur --;
		view_x=camera_get_view_x(view_camera[0]);
		view_y=camera_get_view_y(view_camera[0]);
	    camera_set_view_pos(view_camera[0],view_x+choose(-shakeForce,shakeForce),view_y+choose(-shakeForce,shakeForce));
	    if(shakeDur <= 0){
	        shake = false;
	        shakeDur = 5;
			previous_x=camera_get_view_x(view_camera[0]);
			previous_y=camera_get_view_y(view_camera[0]);
			previous_w=camera_get_view_width(view_camera[0]);
			previous_h=camera_get_view_height(view_camera[0]);
	    }
	}
	else if(!global.camera_movement){
		view_x=camera_get_view_x(view_camera[0]);
		view_y=camera_get_view_y(view_camera[0]);
		if(view_x!=0){
			if(abs(view_x)<3){
				camera_set_view_pos(view_camera[0],0,view_y);
			}
			else{
				camera_set_view_pos(view_camera[0],view_x-sign(view_x)*3,view_y);
			}
		}
		view_x=camera_get_view_x(view_camera[0]);
		camera_set_view_pos(view_camera[0],view_x,lerp(0,previous_y,view_x/previous_x));
		camera_set_view_size(view_camera[0],lerp(room_width,previous_w,view_x/previous_x),lerp(room_height,previous_h,view_x/previous_x));
		/*
		if(view_y!=0){
			view_x=camera_get_view_x(view_camera[0]);
			if(abs(view_y)<2){
				camera_set_view_pos(view_camera[0],view_x,0);
			}
			else{
				camera_set_view_pos(view_camera[0],view_x,view_y-sign(view_y)*2);
			}
		}    
		if(view_w!=room_width){
			if(abs(view_w)>room_width-2){
				camera_set_view_size(view_camera[0],room_width,view_h);
			}
			else{
				camera_set_view_size(view_camera[0],view_w+sign(view_w)*2,view_h);
			}
		}   
		if(view_h!=room_height){
			view_w=camera_get_view_width(view_camera[0]);
			if(abs(view_h)>room_height-2){
				camera_set_view_size(view_camera[0],view_w,room_height);
			}
			else{
				camera_set_view_size(view_camera[0],view_w,view_h+sign(view_h)*2);
			}
		}   
		*/
	}
}
else if(fight_for_first&&!have_fought){
	var random_change=irandom_range(-5,5);
	if(player_value<.5){
		if(random_change>0){
			random_change*=lerp(4,1,player_value/.5);
		}
		else if(random_change<0){
			random_change/=lerp(4,1,player_value/.5);
		}
	}
	else if(player_value>.5){
		if(random_change<0){
			random_change*=lerp(1,4,player_value-.5/.5)
		}
		else if(random_change>0){
			random_change/=lerp(1,4,player_value-.5/.5);
		}
	}
	random_change/=100;
	if(player_value+random_change>0&&player_value+random_change<1){
		player_value+=random_change;
	}
}
else if(fight_for_first&&have_fought){
	if(name_recede){
		name_alpha-=.05;
		if(name_alpha<=0){
			name_recede=false;
		}
	}
	else if(!name_recede){
		name_alpha+=.05;
		if(name_alpha>=1){
			name_recede=true;
		}
	}
}
