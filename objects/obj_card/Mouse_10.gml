/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_battle)){
	var phase=obj_battle.turn_phase;

	if(phase!="action"&&revealed&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
		with(obj_card){
			if(owner=other.owner&&id!=other.id&&!selected){
				if(hovered){
					if(sprite_index=spr_cardPunch_hovered){
						sprite_index=spr_cardPunch;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardPunch_thief_hovered){
						sprite_index=spr_cardPunch_thief;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardKnife_hovered){
						sprite_index=spr_cardKnife;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardKnife_thief_hovered){
						sprite_index=spr_cardKnife_thief;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardWeb_hovered){
						sprite_index=spr_cardWeb;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardWeb_spider_hovered){
						sprite_index=spr_cardWeb_spider;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardPoison_hovered){
						sprite_index=spr_cardPoison;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardPoison_spider_hovered){
						sprite_index=spr_cardPoison_spider;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardStickyPunch_hovered){
						sprite_index=spr_cardStickyPunch;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardRazorWeb_hovered){
						sprite_index=spr_cardRazorWeb;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardVenomousPunch_hovered){
						sprite_index=spr_cardVenomousPunch;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardPoisonedKnife_hovered){
						sprite_index=spr_cardPoisonedKnife;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardWild_hovered){
						sprite_index=spr_cardWild;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardWild_wolf_hovered){
						sprite_index=spr_cardWild_wolf;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardFangs_hovered){
						sprite_index=spr_cardFangs;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardFangs_wolf_hovered){
						sprite_index=spr_cardFangs_wolf;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					else if(sprite_index=spr_cardHunt_hovered){
						sprite_index=spr_cardHunt;
						if(!in_graveyard&&!reward){
							y=room_height*.9;
						}
					}
					else if(sprite_index=spr_cardHunt_wolf_hovered){
						sprite_index=spr_cardHunt_wolf;
						if(!in_graveyard&&!reward){
							y=room_height*.1;
						}
					}
					hovered=false;
				}
			}
		}

		if(sprite_index=spr_cardPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPunch_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPunch_thief&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPunch_thief_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardKnife&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardKnife_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardKnife_thief&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardKnife_thief_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardWeb&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWeb_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWeb_spider&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWeb_spider_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardPoison&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoison_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPoison_spider&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoison_spider_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardStickyPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardStickyPunch_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardRazorWeb&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardRazorWeb_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardVenomousPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardVenomousPunch_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPoisonedKnife&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoisonedKnife_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWild&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWild_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWild_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWild_wolf_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardFangs&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardFangs_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardFangs_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardFangs_wolf_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardHunt&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardHunt_hovered;
			hovered=true;
		depth-=1;
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardHunt_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardHunt_wolf_hovered;
			hovered=true;
		depth-=1;
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
	}
}
else if(!selected&&(!display||position=1)){
	with(obj_card){
			if(owner=other.owner&&id!=other.id&&!selected){
				if(hovered){
					if(sprite_index=spr_cardPunch_hovered){
						sprite_index=spr_cardPunch;
						
					}
					else if(sprite_index=spr_cardPunch_thief_hovered){
						sprite_index=spr_cardPunch_thief;
						
					}
					else if(sprite_index=spr_cardKnife_hovered){
						sprite_index=spr_cardKnife;
						
					}
					else if(sprite_index=spr_cardKnife_thief_hovered){
						sprite_index=spr_cardKnife_thief;
					}
					else if(sprite_index=spr_cardWeb_hovered){
						sprite_index=spr_cardWeb;	
					}
					else if(sprite_index=spr_cardWeb_spider_hovered){
						sprite_index=spr_cardWeb_spider;
					}
					else if(sprite_index=spr_cardPoison_hovered){
						sprite_index=spr_cardPoison;
					}
					else if(sprite_index=spr_cardPoison_spider_hovered){
						sprite_index=spr_cardPoison_spider;
					}
					else if(sprite_index=spr_cardStickyPunch_hovered){
						sprite_index=spr_cardStickyPunch;
					}
					else if(sprite_index=spr_cardRazorWeb_hovered){
						sprite_index=spr_cardRazorWeb;
					}
					else if(sprite_index=spr_cardVenomousPunch_hovered){
						sprite_index=spr_cardVenomousPunch;
					}
					else if(sprite_index=spr_cardPoisonedKnife_hovered){
						sprite_index=spr_cardPoisonedKnife;
					}
					else if(sprite_index=spr_cardWild_hovered){
						sprite_index=spr_cardWild;
					}
					else if(sprite_index=spr_cardWild_wolf_hovered){
						sprite_index=spr_cardWild_wolf;
					}
					else if(sprite_index=spr_cardFangs_hovered){
						sprite_index=spr_cardFangs;
					}
					else if(sprite_index=spr_cardFangs_wolf_hovered){
						sprite_index=spr_cardFangs_wolf;
					}
					else if(sprite_index=spr_cardHunt_hovered){
						sprite_index=spr_cardHunt;
					}
					else if(sprite_index=spr_cardHunt_wolf_hovered){
						sprite_index=spr_cardHunt_wolf;
					}
					hovered=false;
				}
			}
		}
	if(sprite_index=spr_cardPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPunch_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPunch_thief&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPunch_thief_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardKnife&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardKnife_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardKnife_thief&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardKnife_thief_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardWeb&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWeb_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWeb_spider&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWeb_spider_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardPoison&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoison_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPoison_spider&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoison_spider_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardStickyPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardStickyPunch_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardRazorWeb&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardRazorWeb_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardVenomousPunch&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardVenomousPunch_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardPoisonedKnife&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardPoisonedKnife_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWild&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWild_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardWild_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardWild_wolf_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardFangs&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardFangs_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardFangs_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardFangs_wolf_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
		else if(sprite_index=spr_cardHunt&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardHunt_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_bottom>room_height){
				y--;
			}
			while(bbox_right>room_width){
				x--;
			}
		}
		else if(sprite_index=spr_cardHunt_wolf&&(!in_graveyard||(in_graveyard&&id=ds_stack_top(graveyard.graveyard)))){
			sprite_index=spr_cardHunt_wolf_hovered;
			hovered=true;
			depth-=1;
			if(instance_exists(obj_deckEditor)){
				with(obj_card){
					if(id!=other.id){
						depth=other.depth+1
					}
				}
			}
			while(bbox_top<0){
				y++;
			}
			while(bbox_left<0){
				x++;
			}
		}
}