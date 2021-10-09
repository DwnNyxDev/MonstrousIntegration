/// @description Insert description here
// You can write your code in this editor
if(room=rm_startScreen){
	draw_set_halign(fa_left);
	draw_set_font(fnt_Hobbiton);
	draw_set_alpha(1);
	depth=-1;
	draw_set_color(make_color_rgb(138,230,255));
	draw_text(room_width*.01,room_height*.05,"Monstrous");
	draw_text(room_width*.05,room_height*.125,"Integration");
}
else if(room=rm_town){
	if(!instance_exists(obj_deckEditor)&&!instance_exists(obj_dungeonPicker)&&!instance_exists(obj_gachaMachine)){
		draw_sprite(spr_goldIcon,0,view_x+view_w,view_y);
		draw_set_font(default_fnt);
		draw_set_halign(fa_right);
		draw_set_color(c_black);
		draw_text(view_x+view_w-36,view_y+4,string(global.gold));
		draw_set_font(card_descript_fnt);
		draw_text(view_x+view_w-24,view_y+7,"x ");
	}
}