/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_rectangle_color(view_x,view_y,view_x+view_w,view_y+view_h,c_aqua,merge_color(c_aqua,c_blue,.5),c_aqua,merge_color(c_aqua,c_blue,.5),false);
draw_set_font(Phase_fnt);
if(current_page="deck editor"){
	if(image_alpha>=1){
		draw_set_halign(fa_left);
		draw_text(view_x,view_y+75,"Deck:");
		draw_text(view_x,view_y+350,"Card Inventory:");
		draw_set_halign(fa_center);
		draw_text(view_x+view_w/2,view_y+30,"Deck Editor");
	}
}
else if(current_page="rank up cards"){
	draw_set_halign(fa_center);
	draw_text(view_x+view_w/2,view_y+30,"Merge Cards");
	draw_set_font(default_fnt);
	draw_text_ext(view_x+view_w/15,view_y+view_h/5,"Base Card",50,50);
	draw_text_ext(view_x+(14*view_w/15),view_y+view_h/5,"Spent Card",50,50);
	draw_set_halign(fa_left);
	draw_text(view_x+25,view_y+25,"*Glowing means in deck");
}