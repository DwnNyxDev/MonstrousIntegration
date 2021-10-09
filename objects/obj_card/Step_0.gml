/// @description Insert description here
// You can write your code in this editor

view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);
if(instance_exists(card)){
	card_name=ds_map_find_value(card,"name");
	level=ds_map_find_value(card,"level");
}
if((sprite_index=spr_cardBack||sprite_index=spr_cardBack_thief||sprite_index=spr_cardBack_spider||sprite_index=spr_cardBack_wolf)&&revealed){
	if(ds_map_find_value(card,"name")="Punch"){
		if(owner="player"){
			sprite_index=spr_cardPunch;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		else{
			sprite_index=spr_cardPunch_thief;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Knife Slash"){
		if(owner="enemy"){
			sprite_index=spr_cardKnife_thief;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		else if(owner="player"){
			sprite_index=spr_cardKnife;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Sticky Web"){
		if(owner="enemy"){
			sprite_index=spr_cardWeb_spider;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		else if(owner="player"){
			sprite_index=spr_cardWeb;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Poison Strike"){
		if(owner="enemy"){
			sprite_index=spr_cardPoison_spider;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		else if(owner="player"){
			sprite_index=spr_cardPoison;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Sticky Punch"){
		if(owner="player"){
			sprite_index=spr_cardStickyPunch;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
			merged="spider";
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Razor Web"){
		if(owner="player"){
			sprite_index=spr_cardRazorWeb;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
			merged="spider";
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Venomous Punch"){
		if(owner="player"){
			sprite_index=spr_cardVenomousPunch;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
			merged="spider";
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Poisoned Knife"){
		if(owner="player"){
			sprite_index=spr_cardPoisonedKnife;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
			merged="spider";
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Call of the Wild"){
		if(owner="player"){
			sprite_index=spr_cardWild;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		else if(owner="enemy"){
			sprite_index=spr_cardWild_wolf;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="Fangs"){
		if(owner="player"){
			sprite_index=spr_cardFangs;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		else if(owner="enemy"){
			sprite_index=spr_cardFangs_wolf;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}
	else if(ds_map_find_value(card,"name")="For the Hunt"){
		if(owner="player"){
			sprite_index=spr_cardHunt;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_player.graveyard)){
					graveyard=obj_battle.new_player.graveyard;
				}
			}
		}
		else if(owner="enemy"){
			sprite_index=spr_cardHunt_wolf;
			if(instance_exists(obj_battle)){
				if(instance_exists(obj_battle.new_enemy.graveyard)){
					graveyard=obj_battle.new_enemy.graveyard;
				}
			}
		}
		level=ds_map_find_value(card,"level");
	}

}
with(obj_card){
	if(number=other.number+1&&owner=other.owner){
		other.card_right=id;
	}
	else if(number=other.number-1&&owner=other.owner){
		other.card_left=id;
	}
}
if(instance_exists(deck)){
	var mid_card = lerp(1,deck.hand_index,.5);
}
card_hovered=false;
var mid_card_centered=false;
with(obj_card){
	if(hovered&&owner=other.owner){
		other.card_hovered=true;
	}
}
if(instance_exists(obj_battle)){
	if(obj_battle.turn_phase="action"&&transform){
		if(y>room_height*.7&&owner="player"){
			y-=3;

		}
		else if(y<room_height*.3&&owner="enemy"){
			y+=3;
		}
		else if(x!=room_width/2){
			if(x<room_width/2+3&&x>room_width/2-3){
				x=room_width/2;
			}
			else{
				x-=sign(x-room_width/2)*3;
			}
		}
		else{
			if(ds_map_find_value(card,"name")="Punch"||ds_map_find_value(card,"name")="Sticky Punch"||ds_map_find_value(card,"name")="Venomous Punch"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_punchSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.enemy=deck.enemy;
					if(ds_map_find_value(card,"name")="Sticky Punch"){
						new_punch.merge="sticky";
					}
					else if(ds_map_find_value(card,"name")="Venomous Punch"){
						new_punch.merge="venom";
					}
					new_punch.image_angle=image_angle;
					new_punch.depth=-1
					var rando=random_range(0,100);
					if(level=1){
						new_punch.damage=irandom_range(2,3);
						if(new_punch.merge="sticky"){
							if(rando<=30){
								new_punch.sticky=true;
							}	
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=2;
							if(rando<=50){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="+1";
							}
						}
					}
					else if(level=2){
						new_punch.damage=irandom_range(3,4);
						if(new_punch.merge="sticky"){
							if(rando<=40){
								new_punch.sticky=true;
							}	
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=3;
							if(rando<=60){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="+2";
							}
						}
					}
					else if(level=3){
						new_punch.damage=irandom_range(4,5);
						if(new_punch.merge="sticky"){
							if(rando<=50){
								new_punch.sticky=true;
							}	
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=choose(4,5);
							if(rando<=65){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="*1.25";
							}
						}
					}
					else if(level=4){
						new_punch.damage=irandom_range(5,7);
						if(new_punch.merge="sticky"){
							if(rando<=60){
								new_punch.sticky=true;
							}	
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=irandom_range(4,6);
							if(rando<=70){
								new_punch.poison=true;
								new_punch.poison_attacks=2;
								new_punch.poison_modifier="*1.5";
							}
						}
					}
					else if(level=5){
						new_punch.damage=irandom_range(6,8);
					}
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=deck.enemy.depth-1;
						if(!in_graveyard){
							with(graveyard){
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
								else{
									show_debug_message("WHY ARE U NOT RUNNING");
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="Knife Slash"||ds_map_find_value(card,"name")="Razor Web"||ds_map_find_value(card,"name")="Poisoned Knife"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_knifeSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.enemy=deck.enemy;
					if(ds_map_find_value(card,"name")="Razor Web"){
						new_punch.merge="sticky";
					}
					else if(ds_map_find_value(card,"name")="Poisoned Knife"){
						new_punch.merge="venom";
					}
					new_punch.depth=-1;
					new_punch.image_angle=image_angle+180;
					var rando = random_range(0,100);
					if(level=1){
						new_punch.damage=irandom_range(1,2);
						if(rando<=30&&new_punch.merge!="venom"){
							new_punch.bleed=true;
							new_punch.bleed_turns=2;
							new_punch.bleed_damage=1;
						}	
						if(new_punch.merge="sticky"){
							new_punch.damage=1;
							var rando=random_range(0,100);
							if(rando<=30){
								new_punch.sticky=true;
							}
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=1;
							var rando=random_range(0,100);
							if(rando<=40){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="+1";
								new_punch.bleed=true;
								new_punch.bleed_turns=2;
								new_punch.bleed_damage=1;
							}
						}
					}
					else if(level=2){
						new_punch.damage=irandom_range(2,3);
						if(rando<40&&new_punch.merge!="venom"){
							new_punch.bleed=true;
							new_punch.bleed_turns=2;
							new_punch.bleed_damage=1;
						}
						if(new_punch.merge="sticky"){
							new_punch.damage=2;
							var rando=random_range(0,100);
							if(rando<=40){
								new_punch.sticky=true;
							}
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=2;
							var rando=random_range(0,100);
							if(rando<=50){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="+2";
								new_punch.bleed=true;
								new_punch.bleed_turns=2;
								new_punch.bleed_damage=1;
							}
						}
					}
					else if(level=3){
						new_punch.damage=irandom_range(2,4);
						if(rando<50&&new_punch.merge!="venom"){
							new_punch.bleed=true;
							new_punch.bleed_turns=2;
							new_punch.bleed_damage=2;
						}	
						if(new_punch.merge="sticky"){
							new_punch.damage=choose(3,4);
							var rando=random_range(0,100);
							if(rando<=50){
								new_punch.sticky=true;
							}
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=choose(2,3);
							var rando=random_range(0,100);
							if(rando<=60){
								new_punch.poison=true;
								new_punch.poison_attacks=1;
								new_punch.poison_modifier="*1.25";
								new_punch.bleed=true;
								new_punch.bleed_turns=2;
								new_punch.bleed_damage=2;
							}
						}
					}
					else if(level=4){
						new_punch.damage=irandom_range(3,5);
						if(rando<60&&new_punch.merge!="venom"){
							new_punch.bleed=true;
							new_punch.bleed_turns=3;
							new_punch.bleed_damage=2;
						}	
						if(new_punch.merge="sticky"){
							new_punch.damage=irandom_range(3,5);
							var rando=random_range(0,100);
							if(rando<=60){
								new_punch.sticky=true;
							}
						}
						else if(new_punch.merge="venom"){
							new_punch.damage=choose(2,4);
							var rando=random_range(0,100);
							if(rando<=70){
								new_punch.poison=true;
								new_punch.poison_attacks=2;
								new_punch.poison_modifier="*1.5";
								new_punch.bleed=true;
								new_punch.bleed_turns=3;
								new_punch.bleed_damage=2;
							}
						}
					}
					else if(level=5){
						new_punch.damage=irandom_range(4,6);
						if(rando<70){
							new_punch.bleed=true;
							new_punch.bleed_turns=3;
							new_punch.bleed_damage=3;
						}	
					}
					new_punch.depth=depth+1;
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="Sticky Web"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_webSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.type="web";
					new_punch.enemy=deck.enemy;
					new_punch.depth=-1;
					new_punch.image_angle=image_angle;
					var rando = random_range(0,100);
					if(level=1){
						new_punch.damage=irandom_range(1,2);
						if(rando<=30){
							new_punch.sticky=true;
						}	
					}
					else if(level=2){
						new_punch.damage=irandom_range(1,3);
						if(rando<30){
							new_punch.sticky=true;
						}	
					}
					else if(level=3){
						new_punch.damage=irandom_range(1,4);
						if(rando<50){
							new_punch.sticky=true;
						}	
					}
					else if(level=4){
						new_punch.damage=irandom_range(1,5);
						if(rando<60){
							new_punch.sticky=true;
						}	
					}
					else if(level=5){
						new_punch.damage=irandom_range(2,5);
						if(rando<70){
							new_punch.sticky=true;
						}	
					}
					new_punch.depth=depth+1;
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="Poison Strike"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_webSkill);
					new_punch.type="poison";
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.enemy=deck.enemy;
					new_punch.depth=-1;
					new_punch.image_angle=image_angle;
					var rando = random_range(0,100);
					if(level=1){
						if(rando<=50){
							new_punch.poison=true;
							new_punch.poison_attacks=1;
							new_punch.poison_modifier="+1";
						}	
					}
					else if(level=2){
						if(rando<=60){
							new_punch.poison=true;
							new_punch.poison_attacks=1;
							new_punch.poison_modifier="+2";
						}	
					}
					else if(level=3){
						if(rando<=70){
							new_punch.poison=true;
							new_punch.poison_attacks=1;
							new_punch.poison_modifier="*1.25";
						}	
					}
					else if(level=4){
						if(rando<=75){
							new_punch.poison=true;
							new_punch.poison_attacks=2;
							new_punch.poison_modifier="*1.5";
						}	
					}
					else if(level=5){
						if(rando<=80){
							new_punch.poison=true;
							new_punch.poison_attacks=2;
							new_punch.poison_modifier="*1.75";
						}	
					}
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="Fangs"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_wolfSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.type="fangs";
					new_punch.enemy=deck.enemy;
					new_punch.depth=-1;
					new_punch.image_angle=image_angle;
					var rando = random_range(0,100);
					if(level=1){
						new_punch.damage=irandom_range(1,2);
						if(rando<=40){
							new_punch.stuck_resist=true;
							new_punch.stuck_resist_turns=1;
						}
					}
					else if(level=2){
						new_punch.damage=irandom_range(1,3);
						if(rando<=50){
							new_punch.stuck_resist=true;
							new_punch.stuck_resist_turns=1;
						}
					}
					else if(level=3){
						new_punch.damage=irandom_range(2,4);
						if(rando<=60){
							new_punch.stuck_resist=true;
							new_punch.stuck_resist_turns=1;
						}
					}
					else if(level=4){
						new_punch.damage=irandom_range(3,5);
						if(rando<=60){
							new_punch.stuck_resist=true;
							new_punch.stuck_resist_turns=2;
						}
					}
					else if(level=5){
						new_punch.damage=irandom_range(4,7);
						if(rando<=70){
							new_punch.stuck_resist=true;
							new_punch.stuck_resist_turns=2;
						}
					}
					new_punch.depth=depth+1;
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
								else{
							
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
						
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="Call of the Wild"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_wolfSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.type="wild";
					new_punch.enemy=deck.enemy;
					new_punch.depth=-1;
					new_punch.image_angle=image_angle;
					var rando = random_range(0,100);
					new_punch.damage=0;
					if(level=1){
						new_punch.attack_buff="+1";
						new_punch.attack_buff_turns=2;
					}
					else if(level=2){
						new_punch.attack_buff="+2";
						new_punch.attack_buff_turns=2;
					}
					else if(level=3){
						new_punch.attack_buff="*1.25";
						new_punch.attack_buff_turns=2;
					}
					else if(level=4){
						new_punch.attack_buff="*1.25";
						new_punch.attack_buff_turns=3;
					}
					else if(level=5){
						new_punch.attack_buff="*1.5";
						new_punch.attack_buff_turns=3;
					}
					new_punch.depth=depth+1;
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								show_debug_message(owner);
								show_debug_message(other.owner);
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
								else{
									show_debug_message("WHY ARE U NOT RUNNING");
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
							show_debug_message("ran the code bro");
						}
					}
				}
			}
			else if(ds_map_find_value(card,"name")="For the Hunt"){
				if(new_punch=noone){
					new_punch=instance_create_layer(x,y,"Instances",obj_wolfSkill);
					new_punch.can_move=false;
					new_punch.owner=owner;
					new_punch.type="hunt";
					new_punch.enemy=deck.enemy;
					new_punch.depth=-1;
					new_punch.image_angle=image_angle;
					var rando = random_range(0,100);
					new_punch.damage=0;
					if(level=1){
						new_punch.attack_reduce="-1";
						new_punch.attack_reduce_turns=2;
					}
					else if(level=2){
						new_punch.attack_reduce="-2";
						new_punch.attack_reduce_turns=2;
					}
					else if(level=3){
						new_punch.attack_reduce="*.75";
						new_punch.attack_reduce_turns=2;
					}
					else if(level=4){
						new_punch.attack_reduce="*.50";
						new_punch.attack_reduce_turns=2;
					}
					else if(level=5){
						new_punch.attack_reduce="*.25";
						new_punch.attack_reduce_turns=2;
					}
					new_punch.depth=depth+1;
				}
				else{
					if(image_alpha>0){
						image_alpha-=.01;
						new_punch.image_xscale=1-image_alpha;
						new_punch.image_yscale=1-image_alpha;
					}
					else{
						new_punch.can_move=true;
						new_punch.depth=-1;
						if(!in_graveyard){
							with(graveyard){
								show_debug_message(owner);
								show_debug_message(other.owner);
								if(owner=other.owner){
									if(ds_stack_size(graveyard)>0){
										latest_card=ds_stack_top(graveyard);
										latest_card.visible=false;
									}
									ds_stack_push(graveyard,other);
									other.x=x;
									other.y=y;
								}
								else{
									show_debug_message("WHY ARE U NOT RUNNING");
								}
							}
							transform=false;
							image_alpha=1;
							in_graveyard=true;
							show_debug_message("ran the code bro");
						}
					}
				}
			}
		}

	}
}

if(instance_exists(obj_battle)){
	if(!card_hovered&&!transform&&!in_graveyard&&!obj_battle.gameOver){
		if(x>room_width/2-(sprite_width*(mid_card-number))){
			if(x-2<room_width/2-(sprite_width*(mid_card-number))){
				x=room_width/2-(sprite_width*(mid_card-number))
				in_place=true;
			}
			else{
				x-=2;
			}
		}
		else if(x<room_width/2-(sprite_width*(mid_card-number))){

			if(x+2>room_width/2-(sprite_width*(mid_card-number))){
				x=room_width/2-(sprite_width*(mid_card-number));
				in_place=true;
			}
			else{
				x+=2;
			}
		}
	}
}
if(bbox_left<0&&card_hovered&&room=rm_town&&instance_exists(obj_deckEditor)){
	while(bbox_left<0){
		x++;
	}
}
if(!position_meeting(bbox_left-1,y,obj_card)&&bbox_left-1>0&&room=rm_town&&instance_exists(obj_deckEditor)&&!hovered){
	if(!selected){
		x-=1;
	}
}
if(instance_exists(obj_deckEditor)){
		if(number>0){
			with(obj_card){
				if(number=other.number-1&&(in_deck=other.in_deck||obj_deckEditor.current_page="rank up cards")){
					other.previous_card=id;
				}
			}
		}
		if(!hovered&&bbox_right>view_x+view_w){
			y+=sprite_height;
			x=view_x+50;
			with(obj_card){
				if(y=other.y&&id!=id){
					x+=sprite_width;
				}
			}
		}
		else if(!hovered&&y>view_y+150&&in_deck&&bbox_left<5&&obj_deckEditor.current_page="deck editor"){
			if(!place_meeting(view_x+view_w-sprite_width/2,y-sprite_height,obj_card)){
				x=view_x+view_w-1-sprite_width/2;
				y-=sprite_height;
			}
		}
		else if(!hovered&&y>view_y+425&&!in_deck&&bbox_left<5&&obj_deckEditor.current_page="deck editor"){
			if(!place_meeting(view_x+view_w-sprite_width/2,y-sprite_height,obj_card)){
				x=view_x+view_w-1-sprite_width/2;
				y-=sprite_height;
			}
		}
		else if(!hovered&&y>view_y+view_h/1.5&&bbox_left<5&&obj_deckEditor.current_page="rank up cards"){
			if(!place_meeting(view_x+view_w-sprite_width/2,y-sprite_height,obj_card)){
				x=view_x+view_w-1-sprite_width/2;
				y-=sprite_height;
			}
		}
	}

if(owner="enemy"&&!hovered&&!previously_hovered){
	image_angle=180;
}
else if(owner="enemy"&&!hovered&&previously_hovered){
	if(image_angle<180){
		image_angle+=9;
	}
}
else if(owner="enemy"&&hovered){
	if(image_angle>0){
		image_angle-=9;
	}
}

if(instance_exists(obj_winScreen)&&!reward){
	image_alpha=1-obj_winScreen.image_xscale;
}

if(instance_exists(obj_gachaMachine)&&display){
	if(!obj_gachaMachine.summon_animation){
		if(position>1&&position<=2){
			x=lerp(view_x+view_w/2,view_x+view_w*.25,position-1);
			y=lerp(view_y+view_h*(2/3),view_y+view_h/2,position-1);
			if(sprite_index=spr_cardPunch_hovered){
				sprite_index=spr_cardPunch;
			}
			else if(sprite_index=spr_cardKnife_hovered){
				sprite_index=spr_cardKnife;
			}
			image_xscale=lerp(3,1,position-1);
			image_yscale=lerp(3,1,position-1);
			image_alpha=lerp(1,.75,position-1);
			image_blend=merge_color(c_white,c_ltgray,position-1);
		}
		else if(position>2&&position<=3){
			x=lerp(view_x+view_w/4,view_x+view_w/2,position-2);
			y=lerp(view_y+view_h/2,view_y+view_h/3,position-2);
			image_alpha=lerp(.75,.5,position-2);
			image_blend=merge_color(c_ltgray,c_gray,position-2);
		}
		else if(position>3&&position<=4){
			x=lerp(view_x+view_w/2,view_x+view_w*.75,position-3);
			y=lerp(view_y+view_h/3,view_y+view_h/2,position-3);
			image_alpha=lerp(.5,.75,position-3);
			image_blend=merge_color(c_gray,c_ltgray,position-3);
		}
		else if(position>4&&position<=5){
			x=lerp(view_x+view_w*.75,view_x+view_w/2,position-4);
			y=lerp(view_y+view_h/2,view_y+view_h*(2/3),position-4);
			if(sprite_index=spr_cardPunch){
				sprite_index=spr_cardPunch_hovered;
			}
			else if(sprite_index=spr_cardKnife){
				sprite_index=spr_cardKnife_hovered;
			}
			image_xscale=lerp(1/3,1,position-4);
			image_yscale=lerp(1/3,1,position-4);
			image_alpha=lerp(.75,1,position-4);
			image_blend=merge_color(c_ltgray,c_white,position-4);
		}
	}

}
