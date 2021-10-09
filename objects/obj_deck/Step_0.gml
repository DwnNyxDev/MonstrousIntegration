/// @description Insert description here
// You can write your code in this editor
if(!cards_drawn){
	cards_drawn=true;
	ds_list_shuffle(deck);
	for(var index=0;index<2;index++){
	new_card=instance_create_layer(room_width/2-sprite_width/4+sprite_width*index,room_height*.9,"Instances",obj_card);
	if(screen_position="bottom"){
		new_card.sprite_index=spr_cardBack;
		new_card.x=room_width/2-sprite_width/4+sprite_width*index;
		new_card.y=room_height*.9;
		new_card.revealed=true;
		new_card.owner="player";
		new_card.deck=id;
		with(owner){
			ds_list_add(hand,other.new_card);
		}
	}
	else if(screen_position="top"){
		new_card.sprite_index=spr_cardBack_thief;
		new_card.x=room_width/2-sprite_width/4+sprite_width*index;
		new_card.y=room_height*.1;
		new_card.owner="enemy";
		new_card.deck=id;
		new_card.revealed=false;
		with(owner){
			ds_list_add(hand,other.new_card);
		}
	}
	new_card.card=ds_list_find_value(deck,0);
	new_card.number=index;
	ds_list_delete(deck,0);
	}
}
if(instance_exists(obj_winScreen)){
	image_alpha=1-obj_winScreen.image_xscale;
}