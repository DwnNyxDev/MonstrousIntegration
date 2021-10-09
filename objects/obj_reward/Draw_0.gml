/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_font(default_fnt);
draw_set_color(c_white);
if(reward_created){
	if(type="card"&&number_of_cards>1){
		draw_text(new_card.bbox_right+10,y,"x "+string(number_of_cards));
	}
	else if(type="gold"){
		draw_self();
		draw_text(bbox_right+10,y,"x "+string(gold_amount));
	}
}