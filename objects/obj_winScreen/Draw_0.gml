/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(Phase_fnt);
draw_set_alpha(1);
if(image_xscale>=1){
	if(winner="player"){
		draw_text(x,room_height*.2,"You Win!!!");
		if(!created_rewards){
			created_rewards=true;
			alarm[0]=room_speed*1;
		}
	}
	else if(winner="thief"){
		draw_text(x,room_height*.2,"Thief Wins!!!");
	}
	else if(winner="spider"){
		draw_text(x,room_height*.2,"Spider Wins!!!");
		if(!created_rewards){
			created_rewards=true;
			alarm[0]=room_speed*1;
		}
	}
	else if(winner="wolf"){
		draw_text(x,room_height*.2,"Wolf Wins!!!");
		if(!created_rewards){
			created_rewards=true;
			alarm[0]=room_speed*1;
		}
	}
}