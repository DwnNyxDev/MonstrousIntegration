/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
if(sprite_index=noone){
	draw_rectangle_color(view_x,view_y,view_x+view_w,view_y+view_h,c_yellow,c_orange,c_yellow,c_orange,false);
}
else{
	draw_self();
}
if(image_alpha>=1&&sprite_index=noone){
	draw_sprite_ext(spr_goldIcon,0,view_x+48,view_y,2,2,0,c_white,1);
	draw_set_font(Phase_fnt);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text(view_x+70,view_y+10,string(global.gold));
	draw_set_font(card_descript_fnt);
	draw_text_transformed(view_x+57,view_y+20,"X",.8,.8,0);
}

draw_set_font(Phase_fnt);
draw_set_halign(fa_center);
/*
if(image_alpha>=1){
	draw_text(view_x+view_w/2,view_y+view_h*.9,"Level: "+string(global.dungeon_level));
}
*/