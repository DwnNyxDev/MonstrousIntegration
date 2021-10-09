/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_rectangle_color(view_x,view_y,view_x+view_w,view_y+view_h,c_gray,c_black,c_gray,c_black,false);
draw_set_font(Phase_fnt);
draw_set_halign(fa_center);
if(image_alpha>=1){
	draw_text(view_x+view_w/2,view_y+view_h*.9,"Level: "+string(global.dungeon_level));
}