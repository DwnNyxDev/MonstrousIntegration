/// @description Insert description here
// You can write your code in this editor
if(!reward_created){
	if(type="card"){
		new_card=instance_create_layer(x,y,"Instances",obj_card);
		new_card.owner="player";
		new_card.card_name=name;
		new_card.level=level;
		new_card.revealed=true;
		new_card.reward=true;
		new_card.sprite_index=card_sprite;
		new_card.depth=depth-1;
		reward_created=true;
	}
	else if(type="gold"){
		reward_created=true;
	}
}