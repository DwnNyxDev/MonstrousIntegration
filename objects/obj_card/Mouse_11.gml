/// @description Insert description here
// You can write your code in this editor
if(revealed&&!selected&&hovered&&(!display||position=1)){
	hovered=false;
	if(instance_exists(obj_battle)){
		depth-=1;
	}
	with(obj_card){
		previously_hovered=false;
	}
	previously_hovered=true;
	if(position!=1){
		if(sprite_index=spr_cardPunch_hovered){
			sprite_index=spr_cardPunch;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardPunch_thief_hovered){
			sprite_index=spr_cardPunch_thief;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardKnife_hovered){
			sprite_index=spr_cardKnife;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardKnife_thief_hovered){
			sprite_index=spr_cardKnife_thief;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardWeb_hovered){
			sprite_index=spr_cardWeb;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardWeb_spider_hovered){
			sprite_index=spr_cardWeb_spider;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardPoison_hovered){
			sprite_index=spr_cardPoison;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardPoison_spider_hovered){
			sprite_index=spr_cardPoison_spider;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardStickyPunch_hovered){
			sprite_index=spr_cardStickyPunch;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardRazorWeb_hovered){
			sprite_index=spr_cardRazorWeb;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardVenomousPunch_hovered){
			sprite_index=spr_cardVenomousPunch;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardPoisonedKnife_hovered){
			sprite_index=spr_cardPoisonedKnife;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardWild_hovered){
			sprite_index=spr_cardWild;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardWild_wolf_hovered){
			sprite_index=spr_cardWild_wolf;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardFangs_hovered){
			sprite_index=spr_cardFangs;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardFangs_wolf_hovered){
			sprite_index=spr_cardFangs_wolf;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
		else if(sprite_index=spr_cardHunt_hovered){
			sprite_index=spr_cardHunt;
			if(!reward&&!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.9;
			}
		}
		else if(sprite_index=spr_cardHunt_wolf_hovered){
			sprite_index=spr_cardHunt_wolf;
			if(!in_graveyard&&instance_exists(obj_battle)){
				y=room_height*.1;
			}
		}
	}
}