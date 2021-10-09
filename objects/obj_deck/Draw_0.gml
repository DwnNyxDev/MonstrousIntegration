/// @description Insert description here
// You can write your code in this editor

if(obj_battle.turn_phase="draw"&&ds_list_size(deck)>0){
	if(screen_position="bottom"&&obj_battle.whose_turn="player"){
		draw_set_alpha(deck_glow_opacity);
		if(instance_exists(obj_winScreen)){
			draw_set_alpha(1-obj_winScreen.image_xscale);
		}
		draw_rectangle_color(bbox_left-5,bbox_top-5,bbox_right+5,bbox_bottom+5,c_lime,c_lime,c_lime,c_lime,false);
		if(deck_glow_fade){
			deck_glow_opacity-=.05;
			if(deck_glow_opacity<=0){
				deck_glow_fade=false;
			}
		}
		else {
			deck_glow_opacity+=.05;
			if(deck_glow_opacity>=1){
				deck_glow_fade=true;
			}
		}
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_set_alpha(1);
		if(instance_exists(obj_winScreen)){
			draw_set_alpha(1-obj_winScreen.image_xscale);
		}
		draw_set_font(Phase_fnt);
		draw_text(room_width/2+xOffset,room_height*.7,"Draw a Skill Card");
		if(go_right){
			xOffset+=1;
			if(room_width/2+xOffset>room_width){
				go_right=false;
			}
		}
		else{
			xOffset-=1;
			if(room_width/2+xOffset<0){
				go_right=true;
			}
		}
	}
	else if(screen_position="top"&&obj_battle.whose_turn="enemy"){
		draw_set_alpha(deck_glow_opacity);
		if(instance_exists(obj_winScreen)){
			draw_set_alpha(1-obj_winScreen.image_xscale);
		}
		draw_rectangle_color(bbox_left-5,bbox_top-5,bbox_right+5,bbox_bottom+5,c_red,c_red,c_red,c_red,false);
		if(deck_glow_fade){
			deck_glow_opacity-=.05;
			if(deck_glow_opacity<=0){
				deck_glow_fade=false;
			}
		}
		else {
			deck_glow_opacity+=.05;
			if(deck_glow_opacity>=1){
				deck_glow_fade=true;
			}
		}
		draw_set_alpha(1);
	}
}
else if(obj_battle.turn_phase="draw"&&ds_list_size(deck)<=0){
	if(obj_battle.whose_turn="player"&&screen_position="bottom"){
		alarm[0]=1;
	}
	else if(obj_battle.whose_turn="enemy"&&screen_position="top"){
	
		alarm[0]=1;
	}
}
if(ds_list_size(deck)>0){
	draw_self();
}

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(default_fnt);
if(instance_exists(obj_winScreen)){
	draw_set_alpha(1-obj_winScreen.image_xscale);
}
if(screen_position="bottom"){
	draw_text(x+sprite_width/1.5,y-10,ds_list_size(deck));
}
else if(screen_position="top"){
	draw_text(x-sprite_width/1.5,y-10,ds_list_size(deck));
}

