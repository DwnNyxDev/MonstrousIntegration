/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_battle)){
	if(owner="player"&&obj_battle.whose_turn="player"&&obj_battle.turn_phase="choice"&&!in_graveyard){

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
			if(owner=other.owner){
				depth=other.depth-1;
					if(hovered){
						if(sprite_index=spr_cardPunch_hovered){
							sprite_index=spr_cardPunch;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardKnife_hovered){
							sprite_index=spr_cardKnife;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardWeb_hovered){
							sprite_index=spr_cardWeb;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardPoison_hovered){
							sprite_index=spr_cardPoison;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardStickyPunch_hovered){
							sprite_index=spr_cardStickyPunch;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardRazorWeb_hovered){
							sprite_index=spr_cardRazorWeb;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardVenomousPunch_hovered){
							sprite_index=spr_cardVenomousPunch;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardPoisonedKnife_hovered){
							sprite_index=spr_cardPoisonedKnife;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardWild_hovered){
							sprite_index=spr_cardWild;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardFangs_hovered){
							sprite_index=spr_cardFangs;
							y=room_height*.9;
						}
						if(sprite_index=spr_cardHunt_hovered){
							sprite_index=spr_cardHunt;
							y=room_height*.9;
						}
						hovered=false;
					}
				}
		}
	}
}
else if(room=rm_town&&instance_exists(obj_deckEditor)&&obj_deckEditor.current_page="deck editor"){
	if(!in_deck){
		in_deck=true;
		
		ds_map_replace(card,"in_deck",true);
		ds_list_add(global.deck,card);
		x=view_x+view_w-1;
		y=view_y+150;
		while(!position_meeting(bbox_left-1,y,obj_card)&&bbox_left>0){
			x--;
		}
		save_game();
	}
	else {
		in_deck=false;
		ds_map_replace(card,"in_deck",false);
		ds_list_delete(global.deck,ds_list_find_index(global.deck,card));
		x=view_x+view_w-1;
		y=view_y+425;
		while(!position_meeting(bbox_left-1,y,obj_card)&&bbox_left-1>0){
			x--;
		}
		save_game();
	}
}
else if(room=rm_town&&instance_exists(obj_deckEditor)&&obj_deckEditor.current_page="rank up cards"){
	if(obj_deckEditor.base_card=noone&&!selected&&ds_map_find_value(card,"type")!="merge"){
		obj_deckEditor.base_card=id;
		if(sprite_index=spr_cardPunch){
			sprite_index=spr_cardPunch_hovered;
		}
		else if(sprite_index=spr_cardKnife){
			sprite_index=spr_cardKnife_hovered;
		}
		else if(sprite_index=spr_cardWeb){
			sprite_index=spr_cardWeb_hovered;
		}
		else if(sprite_index=spr_cardPoison){
			sprite_index=spr_cardPoison_hovered;
		}
		else if(sprite_index=spr_cardWild){
			sprite_index=spr_cardWild_hovered;
		}
		else if(sprite_index=spr_cardFangs){
			sprite_index=spr_cardFangs_hovered;
		}
		else if(sprite_index=spr_cardHunt){
			sprite_index=spr_cardHunt_hovered;
		}
		selected=true;
		x=view_x+view_w/4;
		y=view_y+view_h/4;
	}
	else if(obj_deckEditor.spent_card=noone&&!selected&&ds_map_find_value(card,"type")!="merge"){
			if((ds_map_find_value(obj_deckEditor.base_card.card,"name")=ds_map_find_value(card,"name"))||(ds_map_find_value(obj_deckEditor.base_card.card,"type")!=ds_map_find_value(card,"type"))){
			obj_deckEditor.spent_card=id;
			if(sprite_index=spr_cardPunch){
				sprite_index=spr_cardPunch_hovered;
			}
			else if(sprite_index=spr_cardKnife){
				sprite_index=spr_cardKnife_hovered;
			}
			else if(sprite_index=spr_cardWeb){
				sprite_index=spr_cardWeb_hovered;
			}
			else if(sprite_index=spr_cardPoison){
				sprite_index=spr_cardPoison_hovered;
			}
			else if(sprite_index=spr_cardWild){
				sprite_index=spr_cardWild_hovered;
			}
			else if(sprite_index=spr_cardFangs){
				sprite_index=spr_cardFangs_hovered;
			}
			else if(sprite_index=spr_cardHunt){
				sprite_index=spr_cardHunt_hovered;
			}
			selected=true;
			x=view_x+3*(view_w/4);
			y=view_y+view_h/4;
		}
	}
	else if(selected&&obj_deckEditor.base_card=id){
		obj_deckEditor.base_card=noone;
		if(sprite_index=spr_cardPunch_hovered){
			sprite_index=spr_cardPunch;
		}
		else if(sprite_index=spr_cardKnife_hovered){
			sprite_index=spr_cardKnife;
		}
		else if(sprite_index=spr_cardWeb_hovered){
			sprite_index=spr_cardWeb;
		}
		else if(sprite_index=spr_cardPoison_hovered){
			sprite_index=spr_cardPoison;
		}
		else if(sprite_index=spr_cardWild_hovered){
			sprite_index=spr_cardWild;
		}
		else if(sprite_index=spr_cardFangs_hovered){
			sprite_index=spr_cardFangs;
		}
		else if(sprite_index=spr_cardHunt_hovered){
			sprite_index=spr_cardHunt;
		}
		selected=false;
		var jump_index=0
		while(place_meeting(view_x+view_w-1-sprite_width/2,view_y+view_h/1.5+sprite_height*jump_index,obj_card)){
			jump_index++;
		}
			x=view_x+view_w-1;
			y=view_y+view_h/1.5+sprite_height*jump_index;
	}
	else if(selected&&obj_deckEditor.spent_card=id){
		obj_deckEditor.spent_card=noone;
		if(sprite_index=spr_cardPunch_hovered){
			sprite_index=spr_cardPunch;
		}
		else if(sprite_index=spr_cardKnife_hovered){
			sprite_index=spr_cardKnife;
		}
		else if(sprite_index=spr_cardWeb_hovered){
			sprite_index=spr_cardWeb;
		}
		else if(sprite_index=spr_cardWild_hovered){
			sprite_index=spr_cardWild;
		}
		else if(sprite_index=spr_cardFangs_hovered){
			sprite_index=spr_cardFangs;
		}
		else if(sprite_index=spr_cardHunt_hovered){
			sprite_index=spr_cardHunt;
		}
		selected=false;
		var jump_index=0
		while(place_meeting(view_x+view_w-1-sprite_width/2,view_y+view_h/1.5+sprite_height*jump_index,obj_card)){
			jump_index++;
		}
			x=view_x+view_w-1;
			y=view_y+view_h/1.5+sprite_height*jump_index;
	}
}

