/// @description Insert description here
// You can write your code in this editor
if(draw_card_ai&&ai&&!obj_battle.gameOver){
	with(deck){
		if(obj_battle.turn_phase="draw"&&ds_list_size(deck)>0){
			if(screen_position="top"&&obj_battle.whose_turn="enemy"){
				hand_index+=1;
				new_card=instance_create_layer(room_width/2+sprite_width*hand_index,room_height*.1,"Instances",obj_card);
				new_card.sprite_index=spr_cardBack_thief;
				new_card.x=room_width/2-sprite_width/4+sprite_width*hand_index;
				new_card.y=room_height*.1;
				new_card.owner="enemy";
				new_card.deck=id;
				new_card.revealed="false";
				new_card.card=ds_list_find_value(deck,0);
				new_card.number=hand_index;
				with(owner){
					ds_list_add(hand,other.new_card);
				}
				ds_list_delete(deck,0);
				obj_battle.turn_phase="choice";
			}
			else if(screen_position="bottom"&&obj_battle.whose_turn="player"){
				hand_index+=1;
				new_card=instance_create_layer(room_width/2+sprite_width*hand_index,room_height*.9,"Instances",obj_card);
				new_card.sprite_index=spr_cardBack;
				new_card.x=room_width/2-sprite_width/4+sprite_width*hand_index;
				new_card.y=room_height*.9;
				new_card.owner="player";
				new_card.deck=id;
				new_card.revealed="true";
				new_card.card=ds_list_find_value(deck,0);
				new_card.number=hand_index;
				with(owner){
					ds_list_add(hand,other.new_card);
				}
				ds_list_delete(deck,0);
				if(ds_list_size(deck)<=0){
					if(other.player_life>=2){
						other.player_life=round(other.player_life/2);
					}
					else if(other.player_life>1){
						other.player_life=1;
					}
				}
				obj_battle.turn_phase="choice";
			}
		}
	}
	draw_card_ai=false;
	choose_card_ai=true;
	alarm[0]=room_speed*2;
}
else if(choose_card_ai&&ai&&!obj_battle.gameOver){
	if(!stuck){
		ds_list_shuffle(hand);
		with(ds_list_find_value(hand,0)){
			if(owner="enemy"&&obj_battle.whose_turn="enemy"&&obj_battle.turn_phase="choice"){
				var card_name=ds_map_find_value(card,"name");
				var card_level=ds_map_find_value(card,"level");
				if(!revealed){
					revealed=true;
				}
				transform=true;
				obj_battle.turn_phase="action";
				deck.hand_index--;
				with(obj_card){
					if(number>other.number&&owner="enemy"){
						number--;
					}
				}
			//<<<<<<< HEAD
				with(obj_card){
				depth=other.depth-1;
					if(hovered){
						if(sprite_index=spr_cardPunch_thief_hovered){
							sprite_index=spr_cardPunch_thief;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardKnife_thief_hovered){
							sprite_index=spr_cardKnife_thief;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardWeb_spider_hovered){
							sprite_index=spr_cardWeb_spider;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardPoison_spider_hovered){
							sprite_index=spr_cardPoison_spider;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardWild_wolf_hovered){
							sprite_index=spr_cardWild_wolf;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardHunt_wolf_hovered){
							sprite_index=spr_cardHunt_wolf;
							y=room_height*.1;
							hovered=false;
						}
						else if(sprite_index=spr_cardFangs_wolf_hovered){
							sprite_index=spr_cardFangs_wolf;
							y=room_height*.1;
							hovered=false;
						}
					}
				}
			}
			else if(owner="player"&&obj_battle.whose_turn="player"&&obj_battle.turn_phase="choice"){
				var card_name=ds_map_find_value(card,"name");
				var card_level=ds_map_find_value(card,"level");
				if(!revealed){
					revealed=true;
				}
				transform=true;
				obj_battle.turn_phase="action";
				deck.hand_index--;
				with(obj_card){
					if(number>other.number&&owner="player"){
						number--;
					}
				}
			//<<<<<<< HEAD
				with(obj_card){
				depth=other.depth-1;
				if(hovered){
					if(sprite_index=spr_cardPunch_hovered){
						sprite_index=spr_cardPunch;
						y=room_height*.9;
						hovered=false;
					}
					else if(sprite_index=spr_cardKnife_hovered){
							sprite_index=spr_cardKnife;
							y=room_height*.9;
							hovered=false;
					}
					else if(sprite_index=spr_cardWeb_hovered){
							sprite_index=spr_cardWeb;
							y=room_height*.9;
							hovered=false;
					}
					else if(sprite_index=spr_cardPoison_hovered){
							sprite_index=spr_cardPoison;
							y=room_height*.9;
							hovered=false;
					}
				}
				}
			}
		}
	}
	else{
		if(obj_battle.whose_turn="player"&&obj_battle.turn_phase="choice"){
			obj_battle.whose_turn="enemy";
			obj_battle.turn_phase="draw";
			stuck=false;
		}
		else if(obj_battle.whose_turn="enemy"&&obj_battle.turn_phase="choice"){
			obj_battle.whose_turn="player";
			obj_battle.turn_phase="draw";
			stuck=false;
		}
	}
}