/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_battle)){
	if(obj_battle.turn_phase="choice"&&hovered&&!in_graveyard){
		if(owner="player"&&obj_battle.whose_turn="player"){
			draw_set_alpha(deck_glow_opacity);
			if(instance_exists(obj_winScreen)){
				draw_set_alpha(1-obj_winScreen.image_xscale);
			}
			draw_rectangle_color(bbox_left-5,bbox_top-5,bbox_right+5,bbox_bottom+5,c_white,c_white,c_white,c_white,false);
			if(deck_glow_fade){
				deck_glow_opacity-=.025;
				if(deck_glow_opacity<=0){
					deck_glow_fade=false;
				}
			}
			else {
				deck_glow_opacity+=.025;
				if(deck_glow_opacity>=1){
					deck_glow_fade=true;
				}
			}
		}
	}
}

if(instance_exists(obj_deckEditor)&&obj_deckEditor.current_page="rank up cards"&&in_deck){
			draw_set_alpha(deck_glow_opacity);
			draw_rectangle_color(bbox_left-5,bbox_top-5,bbox_right+5,bbox_bottom+5,c_white,c_white,c_white,c_white,false);
			if(deck_glow_fade){
				deck_glow_opacity-=.025;
				if(deck_glow_opacity<=0){
					deck_glow_fade=false;
				}
			}
			else {
				deck_glow_opacity+=.025;
				if(deck_glow_opacity>=1){
					deck_glow_fade=true;
				}
			}
}
draw_set_halign(fa_center);
draw_set_alpha(image_alpha);


draw_set_color(c_black);
draw_set_font(Level_font);

var flip=1;
if(image_angle=180){
	flip=-1;
}
if(revealed&&(!display||(display&&(position=1||position=2||position=3||position=4||position=5||position=-1)))){
	draw_self();
	if(image_xscale>=.9&&image_yscale>=.9){
		if(sprite_index=spr_cardPunch_hovered||sprite_index=spr_cardPunch_thief_hovered){
			draw_text_transformed(x,y+40*flip,"Punch Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deal 2-3 points of normal damage",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deal 3-4 points of normal damage",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deal 4-5 points of normal damage",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deal 5-7 points of normal damage. 20% chance to stun for 1 turn",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55,"Deal 6-8 points of normal damage 40% chance to stun for 1 turn",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else if(sprite_index=spr_cardKnife_thief_hovered||sprite_index=spr_cardKnife_hovered){
			draw_text_transformed(x,y+40*flip,"Knife Slash Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deal 1-2 points of piercing damage. 30% chance to inflict bleed.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deal 2-3 points of piercing damage. 40% chance to inflict bleed.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deal 3-5 points of piercing damage. 50% chance to inflict bleed.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deal 4-6 points of piercing damage. 60% chance to inflict bleed.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"Deal 4-7 points of piercing damage. 70% chance to inflict bleed.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else if(sprite_index=spr_cardWeb_spider_hovered||sprite_index=spr_cardWeb_hovered){
			draw_text_transformed(x,y+40*flip,"Sticky Web Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deal 1-2 points of damage. 30% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deal 1-3 points of damage. 40% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deal 1-4 points of damage. 50% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deal 1-5 points of damage. 60% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"Deal 2-5 points of damage. 70% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else if(sprite_index=spr_cardPoison_spider_hovered||sprite_index=spr_cardPoison_hovered){
			draw_text_transformed(x,y+40*flip,"Poison Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"50% chance to inflict poison for next attack. Poisoned enemies take an additional 1 point of damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"60% chance to inflict poison for next attack. Poisoned enemies take an additional 2 points of damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"70% chance to inflict poison for next attack. Poisoned enemies take an additional 25% of damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"75% chance to inflict poison for next 2 attacks. Poisoned enemies take an additional 50% of damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"80% chance to inflict poison for next 2 attacks. Poisoned enemies take an additional 75% of damage.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else if(sprite_index=spr_cardStickyPunch_hovered){
			draw_text_transformed(x,y+40*flip,"Sticky Punch Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2-3 points of damage. 30% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deal 3-4 points of damage. 40% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deal 4-5 points of damage. 50% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deal 5-7 points of damage. 60% chance for enemy to get stuck.",-1,sprite_width*.8,1,1,image_angle);
			}
		}
		else if(sprite_index=spr_cardRazorWeb_hovered){
			draw_text_transformed(x,y+40*flip,"Razor Web Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deals 1 damage. 30% chance for enemy to get stuck and to inflict bleed(1 damage for 2 turns).",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2 damage. 40% chance for enemy to get stuck and to inflict bleed(1 damage for 2 turns).",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deals 3-4 damage. 50% chance for enemy to get stuck and to inflict bleed(2 damage for 2 turns).",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deals 3-5 damage. 60% chance for enemy to get stuck and to inflict bleed(2 damage for 3 turns).",-1,sprite_width*.8,1,1,image_angle);
			}
		}
		else if(sprite_index=spr_cardVenomousPunch_hovered){
			draw_text_transformed(x,y+40*flip,"Venomous Punch Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2 damage. 50% chance to inflict poison for next attack. Poisoned enemies take 1 point extra damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deals 3 damage. 60% chance to inflict poison for next attack. Poisoned enemies take 2 points extra damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deals 4-5 damage. 65% chance to inflict poison for next attack. Poisoned enemies take 25% extra damage.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deals 4-6 damage. 70% chance to inflict poison for next 2 attacks. Poisoned enemies take 50% extra damage.",-1,sprite_width*.8,1,1,image_angle);
			}
		}
		else if(sprite_index=spr_cardPoisonedKnife_hovered){
			draw_text_transformed(x,y+40*flip,"Poisoned Knife Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deals 1 damage.40% chance to inflict bleed/ poison for next attack. Poison:+1 damage. Bleed:1 damage/2 turns.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2 damage.50% chance to inflict bleed/poison for next attack. Poison:+2 damage. Bleed:1 damage/2 turns.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2-3 damage.60% chance to inflict bleed/poison for next attack. Poison:+25% damage. Bleed:2 damage/2 turns.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2-4 damage.70% chance to inflict bleed/poison for next 2 attacks. Poison:+50% damage. Bleed:2 damage/3 turns.",-1,sprite_width*.8,1,1,image_angle);
			}
		}
		else if(sprite_index=spr_cardWild_wolf_hovered||sprite_index=spr_cardWild_hovered){
			draw_text_transformed(x,y+40*flip,"Call of the Wild Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Boosts attack damage by 1 point for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Boosts attack damage by 2 points for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Boosts attack damage by 25% for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Boosts attack damage by 25% for 3 turns.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"Boosts attack damage by 50% for 3turns.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}

		else if(sprite_index=spr_cardFangs_wolf_hovered||sprite_index=spr_cardFangs_hovered){
			draw_text_transformed(x,y+40*flip,"Fangs Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"Deals 1-2 points of damage. 40% chance to gain Stuck Resist for 1 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"Deals 1-3 points of damage. 50% chance to gain Stuck Resist for 1 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"Deals 2-4 points of damage. 60% chance to gain Stuck Resist for 1 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"Deals 3-5 points of damage. 60% chance to gain Stuck Resist for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"Deals 4-7 points of damage. 70% chance to gain Stuck Resist for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else if(sprite_index=spr_cardHunt_wolf_hovered||sprite_index=spr_cardHunt_hovered){
			draw_text_transformed(x,y+40*flip,"For the Hunt Lvl: "+string(level),1,1,image_angle);
			draw_set_font(card_descript_fnt);
			if(level=1){
				draw_text_ext_transformed(x,y+55*flip,"100% chance to reduce attack damage taken by 1 point for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=2){
				draw_text_ext_transformed(x,y+55*flip,"100% chance to reduce attack damage taken by 2 point for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=3){
				draw_text_ext_transformed(x,y+55*flip,"100% chance to reduce attack damage taken by 25% for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=4){
				draw_text_ext_transformed(x,y+55*flip,"75% chance to reduce attack damage taken by 50% for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}
			else if(level=5){
				draw_text_ext_transformed(x,y+55*flip,"65% chance to reduce attack damage taken by 75% for 2 turn.",-1,sprite_width*.8,1,1,image_angle);
			}	
		}
		else {
			draw_text_transformed(x,y+10*flip,"Level "+string(level),1,1,image_angle);
		}
	}
}
else {
	if(owner="player"){
		if(merged=noone){
			draw_sprite(spr_cardBack,0,x,y);
		}
		else if(merged="spider"){
			draw_sprite(spider_playerCardBack,0,x,y);
		}
	}
	else if(owner="enemy"){
		if(obj_battle.enemy="thief"){
			draw_sprite(spr_cardBack_thief,0,x,y);
		}
		else if(obj_battle.enemy="spider"){
			draw_sprite(spr_cardBack_spider,0,x,y);
		}
		else if(obj_battle.enemy="wolf"){
			draw_sprite(spr_cardBack_wolf,0,x,y);
		}
	}
}
draw_set_alpha(1);