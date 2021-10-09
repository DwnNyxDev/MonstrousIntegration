/// @description Insert description here
// You can write your code in this editor
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);
current_page=ds_list_find_value(pages,page_index);
if(page_changed&&current_page="deck editor"){
	page_changed=false;
	for(var index=0;index<ds_list_size(global.card_inventory);index++){
		if(ds_map_find_value(ds_list_find_value(global.card_inventory,index),"in_deck")){
			show_debug_message("working");
			new_card=instance_create_layer(view_x+50+(sprite_get_width(spr_cardBack)*index),view_y+150,"Instances",obj_card);
			new_card.owner="player";
			new_card.sprite_index=spr_cardBack;
			new_card.card=ds_list_find_value(global.card_inventory,index);
			new_card.revealed=true;
			new_card.number=index;
			new_card.depth=depth-1;
				new_card.in_deck=true;
			}
	}

	var position_Offset=0;
	for(var new_index=0;new_index<ds_list_size(global.card_inventory);new_index++){
		if(!ds_map_find_value(ds_list_find_value(global.card_inventory,new_index),"in_deck")){
			if(new_index>0){
				if(ds_map_find_value(ds_list_find_value(global.card_inventory,new_index-1),"in_deck")){
					position_Offset=new_index;
				}
			}
			show_debug_message(view_x+50+(sprite_get_width(spr_cardBack)*(new_index-position_Offset)));
			new_card=instance_create_layer(view_x+50+(sprite_get_width(spr_cardBack)*(new_index-position_Offset)),view_y+425,"Instances",obj_card);
			new_card.owner="player";
			new_card.number=new_index-position_Offset;
			new_card.sprite_index=spr_cardBack;
			new_card.card=ds_list_find_value(global.card_inventory,new_index);
			new_card.revealed=true;
			new_card.depth=depth-1;
				new_card.in_deck=false;
			}
	}
}
else if(page_changed&&current_page="rank up cards"){
	base_card=noone;
	spent_card=noone;
	merge_button_created=false;
	for(var index=0;index<ds_list_size(global.card_inventory);index++){
			new_card=instance_create_layer(view_x+50+(sprite_get_width(spr_cardBack)*index),view_y+view_h/1.5,"Instances",obj_card);
			new_card.owner="player";
			new_card.sprite_index=spr_cardBack;
			new_card.card=ds_list_find_value(global.card_inventory,index);
			new_card.revealed=true;
			new_card.depth=depth-1;
			new_card.number=index;
			if(ds_map_find_value(ds_list_find_value(global.card_inventory,index),"in_deck")){
				new_card.in_deck=true;
			}
	}
	page_changed=false;
}

if(image_alpha<1){
	image_alpha+=.01;
}
if(create_exit_button&&image_alpha>=1){
	camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],room_width/2,room_height/2);
camera_set_view_target(view_camera[0],noone);
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);
	for(var index=0;index<ds_list_size(global.card_inventory);index++){
		if(ds_map_find_value(ds_list_find_value(global.card_inventory,index),"in_deck")){
			new_card=instance_create_layer(view_x+50+(sprite_get_width(spr_cardBack)*index),view_y+150,"Instances",obj_card);
			new_card.owner="player";
			new_card.sprite_index=spr_cardBack;
			new_card.card=ds_list_find_value(global.card_inventory,index);
			new_card.revealed=true;
			new_card.depth=depth-1;
				new_card.in_deck=true;
			}
	}

	var position_Offset=0;
	for(var new_index=0;new_index<ds_list_size(global.card_inventory);new_index++){
		if(!ds_map_find_value(ds_list_find_value(global.card_inventory,new_index),"in_deck")){
			if(new_index>0){
				if(ds_map_find_value(ds_list_find_value(global.card_inventory,new_index-1),"in_deck")){
					position_Offset=new_index;
				}
			}
			new_card=instance_create_layer(view_x+50+(sprite_get_width(spr_cardBack)*(new_index-position_Offset)),view_y+425,"Instances",obj_card);
			new_card.owner="player";
			new_card.sprite_index=spr_cardBack;
			new_card.card=ds_list_find_value(global.card_inventory,new_index);
			new_card.revealed=true;
			new_card.depth=depth-1;
				new_card.in_deck=false;
			}
	}
	new_button=instance_create_layer(view_x+view_w-50,view_y+50,"Instances",obj_button);
	new_button.type="Exit";
	new_button.sprite_index=spr_buttonX;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="X";
	
	new_button=instance_create_layer(view_x+view_w/2-125,view_y+50,"Instances",obj_button);
	new_button.type="Left Arrow";
	new_button.sprite_index=spr_leftArrow;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="Left Arrow";
	
	new_button=instance_create_layer(view_x+view_w/2+125,view_y+50,"Instances",obj_button);
	new_button.type="Right Arrow";
	new_button.sprite_index=spr_leftArrow;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=-1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="Left Arrow";
	create_exit_button=false;
}

if(!merge_button_created&&instance_exists(base_card)&&instance_exists(spent_card)){
	merge_button_created=true;
	new_button=instance_create_layer(view_x+view_w*.45,view_y+view_h/4,"Instances",obj_button);
	new_button.type="Merge";
	new_button.sprite_index=spr_button;
	new_button.color=c_gray;
	new_button.image_blend=c_gray;
	new_button.depth=depth-1;
	new_button.image_xscale=60;
	new_button.image_yscale=30;
	new_button.fnt_color=c_fuchsia;
	new_button.shape="rectangle";
}
if(!instance_exists(base_card)||!instance_exists(spent_card)){
	if(instance_exists(obj_button)&&merge_button_created){
		with(obj_button){
			if(type="Merge"){
				instance_destroy();
			}
		}
		merge_button_created=false;
	}
}