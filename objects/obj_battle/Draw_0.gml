/// @description Insert description here
// You can write your code in this editor

if(global.battle_enemy="thief"){
	if(!battle_started){
		draw_set_alpha(1-(sprite_alpha*1.75));
		draw_rectangle_color(0,room_height/2,room_width,room_height,make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),false);
		draw_rectangle_color(0,0,room_width,room_height/2,make_color_rgb(255,114,107),make_color_rgb(255,114,107),make_color_rgb(255,114,107),make_color_rgb(255,114,107),false);
		draw_set_alpha(.25);
	}
	draw_line_width_color(0,room_height/2,room_width,room_height/2,5,make_color_rgb(194,192,223),make_color_rgb(255,114,107));
	draw_set_alpha(1);
}
else if(global.battle_enemy="spider"){
	if(!battle_started){
		draw_set_alpha(1-(sprite_alpha*1.75));
		draw_rectangle_color(0,room_height/2,room_width,room_height,make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),false);
		draw_rectangle_color(0,0,room_width,room_height/2,make_color_rgb(98,50,141),make_color_rgb(98,50,141),make_color_rgb(98,50,141),make_color_rgb(98,50,141),false);
		draw_set_alpha(.25);
	}
	draw_line_width_color(0,room_height/2,room_width,room_height/2,5,make_color_rgb(194,192,223),make_color_rgb(98,50,141));
	draw_set_alpha(1);
}
else if(global.battle_enemy="wolf"){
	if(!battle_started){
		draw_set_alpha(1-(sprite_alpha*1.75));
		draw_rectangle_color(0,room_height/2,room_width,room_height,make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),make_color_rgb(194,192,223),false);
		draw_rectangle_color(0,0,room_width,room_height/2,make_color_rgb(234,155,9),make_color_rgb(234,155,9),make_color_rgb(234,155,9),make_color_rgb(234,155,9),false);
		
		draw_set_alpha(.25);
	}
	draw_line_width_color(0,room_height/2,room_width,room_height/2,5,make_color_rgb(194,192,223),make_color_rgb(234,155,9));
	draw_set_alpha(1);
}
if(!battle_started){
	draw_set_font(Phase_fnt);
	draw_set_halign(fa_center);
	if(have_fought&&player_value>=.5){
		draw_set_color(c_lime);
	}
	else if(have_fought&&player_value<.5){
		draw_set_color(c_red);
	}
	draw_set_alpha(name_alpha);
	if(global.battle_enemy!="multiplayer"){
		draw_text(room_width/4,room_height*.47,"Player");
	}
	else {
		draw_text(room_width/4,room_height*.47,global.multiplayer_name);
	}
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite_ext(spr_playerBegin_cutIn,0,room_width/2-xOffset,room_height*.875,2,2,0,c_white,sprite_alpha);
	if(!fight_for_first){
		draw_text(room_width/2,room_height*.47,"VS");
	}
	else{
		var coin_width=sprite_get_width(spr_coin);
		var coin_height=sprite_get_height(spr_coin);
		var coin_x=room_width/2-coin_width/2;
		var coin_y=room_height/2-coin_height/2;
		var color=noone;
		if(global.battle_enemy="thief"){
			color=make_color_rgb(255,114,107)
		}
		else if(global.battle_enemy="spider"){
			color=make_color_rgb(98,50,141)
		}
		else if(global.battle_enemy="wolf"){
			color=make_color_rgb(234,155,9)
		}
		draw_sprite_part_ext(spr_coin,0,0,0,lerp(0,coin_width,player_value),coin_height,room_width/2-coin_width/2,room_height/2-coin_height/2,1,1,make_color_rgb(194,192,223),1);
		draw_sprite_part_ext(spr_coin,0,lerp(0,coin_width,player_value),0,coin_width,coin_height,room_width/2+lerp(-coin_width/2,coin_width/2,player_value),room_height/2-coin_height/2,1,1,color,1);
	}
	if(global.battle_enemy="thief"){
		draw_sprite_ext(spr_thiefBegin_cutIn,0,room_width/2+xOffset,room_height*.2,2,2,180,c_white,sprite_alpha);
	}
	else if(global.battle_enemy="spider"){
		draw_sprite_ext(spr_spider_cutIn,0,room_width/2+xOffset,room_height*.2,2,2,180,c_white,sprite_alpha);
	}
	else if(global.battle_enemy="wolf"){
		draw_sprite_ext(spr_wolf_cutIn,0,room_width/2+xOffset,room_height*.2,2,2,180,c_white,sprite_alpha);
	}
	else if(global.battle_enemy="multiplayer"){
			if(enemy_name!=noone){
				draw_sprite_ext(spr_playerBegin_cutIn,0,room_width/2+xOffset,room_height*.125,2,2,180,c_white,sprite_alpha);
			}
		}
		if(have_fought&&player_value>=.5){
			draw_set_color(c_red);
		}
		else if(have_fought&&player_value<.5){
			draw_set_color(c_lime);
		}
		draw_set_alpha(name_alpha);
		if(global.battle_enemy="thief"){
			draw_text(room_width*.75,room_height*.47,"Thief");
		}
		else if(global.battle_enemy="spider"){
			draw_text(room_width*.75,room_height*.47,"Spider");
		}
		else if(global.battle_enemy="wolf"){
			draw_text(room_width*.75,room_height*.47,"Wolf");
		}
		else if(global.battle_enemy="multiplayer"){
			if(enemy_name!=noone){
				draw_text(room_width*.75,room_height*.47,enemy_name);
			}
		}
		draw_set_alpha(1);
	if(sprite_alpha<1){
		sprite_alpha+=.005;
	}
	else if(!fight_for_first){
		if(global.battle_enemy!="multiplayer"){
			fight_for_first=true;
			alarm[1]=irandom_range(room_speed*3,room_speed*6);
		}
		/*
		player_coin=instance_create_layer(room_width/2,room_height/2,"Instances",obj_coin);
		player_coin.image_blend=make_color_rgb(194,192,223);
		player_coin.type="player";
		
		enemy_coin=instance_create_layer(room_width/2,room_height/2,"Instances",obj_coin);
		enemy_coin.image_blend=make_color_rgb(255,114,107);
		enemy_coin.type="enemy";
		*/
	}
	draw_set_color(c_white);

}

