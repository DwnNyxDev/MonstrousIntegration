/// @description Insert description here
// You can write your code in this editor
if(obj_battle.enemy="thief"){
	new_reward=instance_create_layer(x-sprite_width/4,room_height*.4,"Instances",obj_reward);
	new_reward.type="card";
	new_reward.name="Knife Slash";
	new_reward.level=1;
	new_reward.card_sprite=spr_cardKnife;
	new_reward.number_of_cards=3;
	new_reward.depth=depth-1;
	
}
else if(obj_battle.enemy="spider"){
	new_reward=instance_create_layer(x-sprite_width/4,room_height*.4,"Instances",obj_reward);
	var rando=random_range(0,100);
	if(winner="player"){
		if(rando<random_range(30,70)){
			new_reward.type="gold";
			new_reward.sprite_index=spr_goldCoin;
			new_reward.gold_amount=irandom_range(25*global.dungeon_level,50*global.dungeon_level);
			new_reward.depth=depth-1;
		}
		else{
			new_reward.type="card";
			new_reward.name=choose("Sticky Web","Poison Strike");
			var rando=random_range(0,100);
			if(global.dungeon_level=1){
				new_reward.level=1;
			}
			else if(global.dungeon_level=2){
				if(rando<=65){
					new_reward.level=1;
				}
				else{
					new_reward.level=2;
				}
			}
			else if(global.dungeon_level=3){
				if(rando<=80){
					new_reward.level=2;
				}
				else{
					new_reward.level=3;
				}
			}
			if(new_reward.name="Sticky Web"){
				new_reward.card_sprite=spr_cardWeb;
			}
			else if(new_reward.name="Poison Strike"){
				new_reward.card_sprite=spr_cardPoison;
			}
			new_reward.number_of_cards=irandom_range(1,3);
			new_reward.card_type="monster";
			new_reward.depth=depth-1;
		}
	}
	else{
		new_reward.type="gold";
		new_reward.sprite_index=spr_goldCoin;
		new_reward.gold_amount=round(irandom_range(25*global.dungeon_level,50*global.dungeon_level)/2);
		new_reward.depth=depth-1;
	}
}
else if(obj_battle.enemy="wolf"){
	new_reward=instance_create_layer(x-sprite_width/4,room_height*.4,"Instances",obj_reward);
	var rando=random_range(0,100);
	if(winner="player"){
		if(rando<=100){
			new_reward.type="gold";
			new_reward.sprite_index=spr_goldCoin;
			new_reward.gold_amount=irandom_range(50*global.dungeon_level,100*global.dungeon_level);
			new_reward.depth=depth-1;
		}
		else{
			new_reward.type="card";
			new_reward.name=choose("Call of the Wild","For the Hunt","Fangs");
			var rando=random_range(0,100);
			if(global.dungeon_level=1){
				new_reward.level=1;
			}
			else if(global.dungeon_level=2){
				if(rando<=65){
					new_reward.level=1;
				}
				else{
					new_reward.level=2;
				}
			}
			else if(global.dungeon_level=3){
				if(rando<=80){
					new_reward.level=2;
				}
				else{
					new_reward.level=3;
				}
			}
			if(new_reward.name="Call of the Wild"){
				new_reward.card_sprite=spr_cardWild;
			}
			else if(new_reward.name="For the Hunt"){
				new_reward.card_sprite=spr_cardHunt;
			}
			else if(new_reward.name="Fangs"){
				new_reward.card_sprite=spr_cardFangs;
			}
			new_reward.number_of_cards=irandom_range(1,3);
			new_reward.card_type="monster";
			new_reward.depth=depth-1;
		}
	}
	else{
		new_reward.type="gold";
		new_reward.sprite_index=spr_goldCoin;
		new_reward.gold_amount=round(irandom_range(25*global.dungeon_level,50*global.dungeon_level)/2);
		new_reward.depth=depth-1;
	}
}