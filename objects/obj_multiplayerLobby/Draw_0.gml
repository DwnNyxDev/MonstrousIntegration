/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_rectangle_color(view_x,view_y,view_x+view_w,view_y+view_h,c_lime,c_green,c_lime,c_green,false);
if(image_alpha>=1){
	draw_rectangle_color(view_x+view_w/3,view_y+view_h/4,view_x+(2*(view_w/3)),view_y+view_h/4+50,c_gray,c_gray,c_gray,c_gray,false);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_font(Phase_fnt);
	if(string_length(message)<1){
		draw_text(view_x+view_w/3,view_y+view_h/4+10, "Enter name...");
	}
	else{
		draw_text(view_x+view_w/3,view_y+view_h/4+10, message);
	}
}