/// @description Insert description here
// You can write your code in this editor
if(type="Auto"){
	if(obj_battle.new_player.ai){
		obj_battle.new_player.ai=false;
	}
	else{
		with(obj_battle.new_player){
			ai=true;
			alarm[0]=1;
			if(obj_battle.whose_turn="player"&&obj_battle.turn_phase="draw"){
				draw_card_ai=true;
			}
			else if(obj_battle.whose_turn="player"&&obj_battle.turn_phase="choice"){
				choose_card_ai=true;
			}
		}
	}
}
else if(type="Continue"){
	if(instance_exists(obj_reward)){
		with(obj_reward){
			if(type="card"){
				repeat(number_of_cards){
					new_card=ds_map_create();
					ds_map_add(new_card,"name",name);
					ds_map_add(new_card,"level",level);
					ds_map_add(new_card,"in_deck",false);
					ds_map_add(new_card,"type",card_type);
					ds_list_add(global.card_inventory,new_card);
				}
				save_game();
			}
			else if(type="gold"){
				global.gold+=gold_amount;
				save_game();
			}
		}
	}
	if(global.first_battle){
		room_goto(rm_MurderScene);
	}
	else{
		room_goto(rm_town);
	}
}
else if(type="Start"){
	room_goto(rm_town);
}
else if(type="Exit"){
	if(instance_exists(obj_deckEditor)){
		instance_destroy(obj_deckEditor);
		audio_resume_sound(town_bg);
	}
	else if(instance_exists(obj_dungeonPicker)){
		instance_destroy(obj_dungeonPicker);
		audio_resume_sound(town_bg);
	}
	else if(instance_exists(obj_gachaMachine)){
		instance_destroy(obj_gachaMachine);
		audio_resume_sound(town_bg);
	}
	else if(instance_exists(obj_multiplayerLobby)){
		instance_destroy(obj_multiplayerLobby);
	}
		obj_playerBegin.can_move=true;
		if(instance_exists(obj_battleFlash)){
			obj_battleFlash.image_alpha=0;
		}
		camera_set_view_pos(view_camera[0],obj_playerBegin.x-200,obj_playerBegin.y-200);
	camera_set_view_size(view_camera[0],400,400);
	camera_set_view_target(view_camera[0],obj_playerBegin);
	instance_destroy();
}
else if(type="Left Arrow"){
	if(instance_exists(obj_deckEditor)){
		with(obj_deckEditor){
			if(page_index>0){
				page_index--;
				page_changed=true;
				instance_destroy(obj_card);
			}
			else{
				page_changed=last_page;
				page_changed=true;
				instance_destroy(obj_card);
			}
		}
	}
	else if(instance_exists(obj_dungeonPicker)){
		if(global.dungeon_level>1){
			global.dungeon_level--;
		}
	}
}
else if(type="Right Arrow"){
	if(instance_exists(obj_deckEditor)){
		with(obj_deckEditor){
			if(page_index<last_page){
				page_index++;
				page_changed=true;
				instance_destroy(obj_card);
			}
			else{
				page_index=0;
				page_changed=true;
				instance_destroy(obj_card);
			}
		}
	}
	else if(instance_exists(obj_dungeonPicker)){
		if(global.dungeon_level<3){
			global.dungeon_level++;
		}
	}
}
else if(type="Merge"){
	with(obj_deckEditor){
		var base=base_card.card;
		var spent=spent_card.card;
		if(ds_map_find_value(base,"type")!="merge"&&ds_map_find_value(spent,"type")!="merge"){
			if(ds_map_find_value(base,"name")==ds_map_find_value(spent,"name")&&ds_list_size(global.card_inventory)>5){
				if(ds_map_find_value(base,"level")==ds_map_find_value(spent,"level")){
					base_card.level=ds_map_find_value(base,"level")+1;
					ds_map_replace(base,"level",ds_map_find_value(base,"level")+1);
					/*
					if(ds_list_find_index(global.deck,spent)!=-1){
						ds_list_delete(global.deck,ds_list_find_index(global.deck,spent));
					}
					*/
					ds_list_delete(global.card_inventory,ds_list_find_index(global.card_inventory,spent));
					ds_list_delete(global.deck,ds_list_find_index(global.deck,spent));
					instance_destroy(spent_card);
					spent_card=noone;
					save_game();
				}
			}
			else if(ds_map_find_value(base,"type")!=ds_map_find_value(spent,"type")&&ds_map_find_value(base,"name")!="For the Hunt"&&ds_map_find_value(base,"name")!="Call of the Wild"&&ds_map_find_value(base,"name")!="Fangs"&&ds_map_find_value(spent,"name")!="For the Hunt"&&ds_map_find_value(spent,"name")!="Call of the Wild"&&ds_map_find_value(spent,"name")!="Fangs"&&ds_list_size(global.card_inventory)>5){
				if(ds_map_find_value(base,"level")==ds_map_find_value(spent,"level")&&ds_map_find_value(base,"level")>1){
					new_card=ds_map_create();
					var new_name=noone;
					if(ds_map_find_value(base,"name")="Punch"){
						if(ds_map_find_value(spent,"name")="Sticky Web"){
							new_name="Sticky Punch";
							base_card.sprite_index=spr_cardStickyPunch;
						}
						else if(ds_map_find_value(spent,"name")="Poison Strike"){
							new_name="Venomous Punch";
							base_card.sprite_index=spr_cardVenomousPunch;
						}
					}
					else if(ds_map_find_value(base,"name")="Knife Slash"){
						if(ds_map_find_value(spent,"name")="Sticky Web"){
							new_name="Razor Web";
							base_card.sprite_index=spr_cardRazorWeb;
						}
						else if(ds_map_find_value(spent,"name")="Poison Strike"){
							new_name="Poisoned Knife";
							base_card.sprite_index=spr_cardPoisonedKnife;
						}
					}
					else if(ds_map_find_value(base,"name")="Sticky Web"){
						if(ds_map_find_value(spent,"name")="Punch"){
							new_name="Sticky Punch";
							base_card.sprite_index=spr_cardStickyPunch;
						}
						else if(ds_map_find_value(spent,"name")="Knife Slash"){
							new_name="Razor Web";
							base_card.sprite_index=spr_cardRazorWeb;
						}
					}
					else if(ds_map_find_value(base,"name")="Poison Strike"){
						if(ds_map_find_value(spent,"name")="Punch"){
							new_name="VenomousPunch";
							base_card.sprite_index=spr_cardVenomousPunch;
						}
						else if(ds_map_find_value(spent,"name")="Knife Slash"){
							new_name="Poisoned Knife";
							base_card.sprite_index=spr_cardPoisonedKnife;
						}
					}
					base_card.hovered=false;
					base_card.in_deck=true;
					ds_map_add(new_card,"name",new_name);
					ds_map_add(new_card,"level",ds_map_find_value(base,"level")-1);
					base_card.level=ds_map_find_value(base,"level")-1;
					ds_map_add(new_card,"in_deck",true);
					ds_map_add(new_card,"type","merge");
					base_card.card=new_card;
					var jump_index=0
					while(place_meeting(view_x+view_w-60,view_y+view_h/1.5+78*jump_index,obj_card)){
						jump_index++;
					}
						base_card.x=view_x+view_w-1-60;
						base_card.y=view_y+view_h/1.5+78*jump_index;
						base_card.selected=false;
						base_card=noone;
					/*
					if(ds_list_find_index(global.deck,spent)!=-1){
						ds_list_delete(global.deck,ds_list_find_index(global.deck,spent));
					}
					*/
					ds_list_delete(global.card_inventory,ds_list_find_index(global.card_inventory,spent));
					ds_list_replace(global.card_inventory,ds_list_find_index(global.card_inventory,base),new_card);
					instance_destroy(spent_card);
					spent_card=noone;
					save_game();
				}
			}
		}
	}
}
else if(type="Enemy"){
	if(shape="Spider"){
		global.battle_enemy="spider";
		room_goto(rm_battle);
	}
	else if(shape="Wolf"){
		global.battle_enemy="wolf";
		room_goto(rm_battle);
	}
}
else if(type="Draw"&&!obj_gachaMachine.summon_animation){
	if(global.gold>=100){
		with(obj_gachaMachine){
			summon_animation=true;
			multiple_summons=false;
		}
		global.gold-=100;
		save_game();
	}
}
else if(type="Draw x10"&&!obj_gachaMachine.summon_animation){
	if(global.gold>=1000){
		with(obj_gachaMachine){
			summon_animation=true;
			multiple_summons=true;
		}
		global.gold-=1000;
		save_game();
	}
}
else if(type="Host"&&string_length(obj_multiplayerLobby.message)>=1){
	instance_create_layer(0,0,"Instances",obj_server);
	global.battle_enemy="multiplayer";
	global.multiplayer_name=obj_multiplayerLobby.message;
	room_goto(rm_battle);
}
else if(type="Join"&&string_length(obj_multiplayerLobby.message)>=1){
	instance_create_layer(0,0,"Instances",obj_client);
	global.battle_enemy="multiplayer";
	global.multiplayer_name=obj_multiplayerLobby.message;
	room_goto(rm_battle);
}