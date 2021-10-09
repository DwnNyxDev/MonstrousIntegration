/// @description Insert description here
// You can write your code in this editor
if(room=rm_MurderScene&&!obj_murderScene.thief_battle_scene){
	new_player=instance_create_layer(1088,672,"Instances",obj_playerBegin);
	new_friend=instance_create_layer(1155,672,"Instances",obj_friendBegin);
	new_player.can_move=false;
	new_friend.can_move=false;
}
else if(room=rm_startScreen){
	var default_deck=ds_list_create();
	var default_card_inventory=ds_list_create();
	global.first_battle=false;
	new_flash_layer=instance_create_layer(0,0,"Instances",obj_battleFlash);
	new_flash_layer.image_alpha=1;
	new_flash_layer.fade=true;
	repeat(5){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Punch");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","player");
		ds_list_add(default_card_inventory,new_card);
		ds_list_add(default_deck,new_card);
	}
	repeat(3){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Knife Slash");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","player");
		ds_list_add(default_card_inventory,new_card);
		ds_list_add(default_deck,new_card);
	}
	ini_open("saveData.ini")
		global.gold=ini_read_real("variables","gold",0);
		if(ini_read_real("deck","num_of_cards",0)<1){
			global.deck=default_deck;
		}
		else{
			ds_list_clear(global.deck);
			for(var index=0;index<ini_read_real("deck","num_of_cards",0);index++){
				new_card=ds_map_create();
				ds_map_read(new_card,ini_read_string("deck",index,noone))
				ds_list_add(global.deck,new_card);
			}
		}
		if(ini_read_real("card_inventory","num_of_cards",0)<1){
			global.card_inventory=default_card_inventory;
		}
		else{
			ds_list_clear(global.card_inventory);
			for(var index=0;index<ini_read_real("card_inventory","num_of_cards",0);index++){
				new_card=ds_map_create();
				ds_map_read(new_card,ini_read_string("card_inventory",index,noone))
				show_debug_message(ds_map_find_value(new_card,"name"));
				if(ds_map_find_value(new_card,"name")="Sticky Web"||ds_map_find_value(new_card,"name")="Poison Strike"){
					if(ds_map_find_value(new_card,"type")="player"){
						ds_map_replace(new_card,"type","monster");
					}
				}
				ds_list_add(global.card_inventory,new_card);
			}
		}
	ini_close();
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Call of the Wild");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",false);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Fangs");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",false);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","For the Hunt");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",false);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
	}
	save_game();
	new_button=instance_create_layer(room_width*.05,room_height*.3,"Instances",obj_button);
	new_button.type="Start";
	new_button.sprite_index=spr_buttonArrow;
	new_button.image_blend=c_gray;
	new_button.color=c_gray;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="arrow";
}
else if(room=rm_town){
	if(!instance_exists(obj_playerBegin)){
	instance_create_layer(464,1248,"Instances",obj_playerBegin);
	//instance_create_layer(1168,224,"Instances",obj_playerBegin);
	}
	if(!audio_is_playing(town_bg)){
		audio_stop_all();
		audio_play_sound(town_bg,-1,true);
	}
}