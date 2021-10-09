/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_font(default_fnt);
draw_set_halign(fa_center);
if(instance_exists(obj_winScreen)){
	draw_set_alpha(1-obj_winScreen.image_xscale);
}
if(type="player"){
	draw_text_transformed(x+sprite_width/4,bbox_top+sprite_height/4,"Life: "+string(player_life),1,1,315+image_angle);
}
else if(type="enemy"){
	draw_text_transformed(x-sprite_width/4,bbox_bottom-sprite_height/4,"Life: "+string(player_life),1,1,315+image_angle);
}
if(bleeding){
	if(type="player"){
		draw_sprite(spr_bloodIcon,0,bbox_right,bbox_bottom-20);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_fuchsia);
		draw_text(bbox_right+20,bbox_bottom-20,bleeding_turns);
	}
	else if(type="enemy"){
		draw_sprite(spr_bloodIcon,0,bbox_left-25,bbox_bottom-120);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_fuchsia);
		draw_text(bbox_left-30,bbox_bottom-120,bleeding_turns);
	}
}
if(poisoned){
	if(type="player"){
		draw_sprite(spr_poisonIcon,0,bbox_right,bbox_bottom-45);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_right+20,bbox_bottom-45,poisoned_attacks);
	}
	else if(type="enemy"){
		draw_sprite(spr_poisonIcon,0,bbox_left-20,bbox_bottom-85);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_left-3,bbox_bottom-85,poisoned_attacks);
	}
}
if(stuck){
	if(type="player"){
		draw_sprite(spr_stuckIcon,0,bbox_right,bbox_bottom-80);
	}
	else if(type="enemy"){
		draw_sprite(spr_stuckIcon,0,bbox_left-25,bbox_bottom-60);
	}
}
if(stuck_resist){
	if(type="player"){
		draw_sprite(spr_stuckIcon,0,bbox_right,bbox_bottom-80);
		draw_set_color(c_red);
		draw_line_width(bbox_right,bbox_bottom-80,bbox_right+26,bbox_bottom-54,4);
	}
	else if(type="enemy"){
		draw_sprite(spr_stuckIcon,0,bbox_left-25,bbox_bottom-60);
		draw_set_color(c_red);
		draw_line_width(bbox_left-25,bbox_bottom-60,bbox_left,bbox_bottom-34,4);
	}
}
if(attack_buff!=noone){
	if(type="player"){
		draw_sprite(spr_swordIcon,0,bbox_right+36,bbox_bottom-80);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_right+36,bbox_bottom-80,attack_buff_turns);
		draw_text(bbox_right+60,bbox_bottom-63,attack_buff);
	}
	else if(type="enemy"){
		draw_sprite(spr_swordIcon,0,bbox_left-60,bbox_bottom-60);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_left-60,bbox_bottom-60,attack_buff_turns);
		draw_text(bbox_left-36,bbox_bottom-43,attack_buff);
	}
}
if(attack_reduce!=noone){
	if(type="player"){
		draw_sprite(spr_shieldIcon,0,bbox_right+38,bbox_bottom-45);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_right+36,bbox_bottom-45,attack_reduce_turns);
		draw_text(bbox_right+62,bbox_bottom-28,attack_reduce);
	}
	else if(type="enemy"){
		draw_sprite(spr_shieldIcon,0,bbox_left-60,bbox_bottom-85);
		draw_set_font(card_descript_fnt);
		draw_set_color(c_white);
		draw_text(bbox_left-62,bbox_bottom-90,attack_reduce_turns);
		draw_text(bbox_left-32,bbox_bottom-73,attack_reduce);
	}
}