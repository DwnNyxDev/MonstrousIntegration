/// @description Insert description here
// You can write your code in this editor

	if(message_side_left!=undefined){
			draw_set_halign(fa_left);
			draw_set_alpha(1);
			draw_set_font(default_fnt);
			draw_set_color(ds_map_find_value(message_side_left,"color"));
			draw_sprite(ds_map_find_value(message_side_left,"icon"),0,camera_x,818);
			
			draw_text_ext(camera_x+50,818,ds_map_find_value(message_side_left,"text"),-1,camera_w*.4);
	}
	if(message_side_right!=undefined){
		draw_set_halign(fa_right);
		draw_set_alpha(1);
		draw_set_font(default_fnt);
		draw_set_color(ds_map_find_value(message_side_right,"color"));
		draw_sprite(ds_map_find_value(message_side_right,"icon"),0,camera_x+camera_w,818);
		draw_text_ext(camera_x+camera_w-50,818,ds_map_find_value(message_side_right,"text"),-1,camera_w*.4);
	}
