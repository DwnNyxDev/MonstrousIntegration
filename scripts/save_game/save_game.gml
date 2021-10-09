function save_game() {

	file_delete("saveData.ini");
	ini_open("saveData.ini");
	for(var index=0;index<ds_list_size(global.deck);index++){
		ini_write_string("deck",index,ds_map_write(ds_list_find_value(global.deck,index)));
	}
	ini_write_real("deck","num_of_cards",ds_list_size(global.deck));
	for(var index=0;index<ds_list_size(global.card_inventory);index++){
		ini_write_string("card_inventory",index,ds_map_write(ds_list_find_value(global.card_inventory,index)));
	}
	ini_write_real("card_inventory","num_of_cards",ds_list_size(global.card_inventory));
	ini_write_real("variables","gold",global.gold);
	ini_close();


}
