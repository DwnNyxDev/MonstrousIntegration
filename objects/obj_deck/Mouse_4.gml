/// @description Insert description here
// You can write your code in this editor
if(obj_battle.turn_phase="draw"&&ds_list_size(deck)>0){
	if(screen_position="bottom"&&obj_battle.whose_turn="player"){
		hand_index+=1;
		new_card=instance_create_layer(room_width/2+sprite_width*hand_index,room_height*.9,"Instances",obj_card);
		new_card.sprite_index=spr_cardBack;
		new_card.x=room_width/2-sprite_width/4+sprite_width*hand_index;
		new_card.y=room_height*.9;
		new_card.owner="player";
		new_card.deck=id;
		new_card.card=ds_list_find_value(deck,0);
		new_card.number=hand_index;
		with(owner){
			ds_list_add(hand,other.new_card);
		}
		ds_list_delete(deck,0);
		if(ds_list_size(deck)<=0){
			if(obj_battle.new_player.player_life>=2){
				obj_battle.new_player.player_life=round(obj_battle.new_player.player_life/2);
			}
			else if(obj_battle.new_player.player_life>1){
				obj_battle.new_player.player_life=1;
			}
		}
		if(obj_battle.new_player.stuck){
			obj_battle.new_player.stuck=false;
			obj_battle.whose_turn="enemy";
			obj_battle.turn_phase="draw";
		}
		else{
			obj_battle.turn_phase="choice";
		}
	}
}