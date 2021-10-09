function scr_recieved_packet(argument0) {
	var buffer = argument0;
	var message_type = buffer_read(buffer,buffer_string); //100,120

	switch (message_type) {
		case "name":
			obj_battle.enemy_name=buffer_read(buffer,buffer_string);
				break;	
	}


}
