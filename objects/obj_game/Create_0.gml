/// @description Insert description here
// You can write your code in this editor
randomize();

var _path = working_directory + "\hobbiton.ttf"; 
show_debug_message("Loading from ... " + string(_path));

fnt_Hobbiton = font_add(_path, 50, false, false, 32, 128);

global.battle_enemy="thief";
global.first_battle=true;
global.dungeon_level=1;
global.deck=ds_list_create();
global.camera_movement=false;
global.card_inventory=ds_list_create();
global.gold=0;
global.multiplayer_name="";

if(!file_exists("saveData.ini")){
	global.gold=100;
	repeat(5){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Punch");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","player");
		ds_list_add(global.card_inventory,new_card);
		ds_list_add(global.deck,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Knife Slash");
		ds_map_add(new_card,"level",1);
		ds_list_add(global.card_inventory,new_card);
		ds_list_add(global.deck,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Call of the Wild");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
		ds_list_add(global.deck,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","Fangs");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
		ds_list_add(global.deck,new_card);
	}
	repeat(0){
		new_card=ds_map_create();
		ds_map_add(new_card,"name","For the Hunt");
		ds_map_add(new_card,"level",1);
		ds_map_add(new_card,"in_deck",true);
		ds_map_add(new_card,"type","monster");
		ds_list_add(global.card_inventory,new_card);
		ds_list_add(global.deck,new_card);
	}
	
}
else{
	room_set_persistent(rm_MurderScene,false);
	room_goto(rm_startScreen);
}

//async_event=http_get("http://ipv4bot.whatismyipaddress.com/");