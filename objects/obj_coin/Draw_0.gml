/// @description Insert description here
// You can write your code in this editor

if(type="player"){
	draw_set_color(c_gray);
	draw_sprite_part(sprite_index,image_index,0,0,lerp(0,sprite_width,obj_battle.player_value),sprite_height,bbox_left,bbox_top);
}
/*
else if(type="enemy"){
	draw_set_color(c_red);
	draw_sprite_part(sprite_index,image_index,lerp(0,sprite_width,obj_battle.player_value),0,sprite_width-lerp(0,sprite_width,obj_battle.player_value),sprite_height,x,y);
}

draw_set_color(c_white);

