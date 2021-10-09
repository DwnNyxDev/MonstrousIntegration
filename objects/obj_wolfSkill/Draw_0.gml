/// @description Insert description here
// You can write your code in this editor
draw_self();
	if(slashing){
		if(owner="enemy"){
			draw_line_width_color(previous_x-sprite_width/2,previous_y+sprite_height/2,bbox_left,bbox_bottom,4,c_fuchsia,c_red);
			if(ds_list_size(lines_x)>1){
				for(var index=0;index<ds_list_size(lines_x)-1;index++){
					draw_line_width_color(ds_list_find_value(lines_x,index)-sprite_width/2,ds_list_find_value(lines_y,index)+sprite_height/2,ds_list_find_value(lines_x,index+1)-sprite_width/2,ds_list_find_value(lines_y,index+1)+sprite_height/2,4,c_fuchsia,c_red);
				}
			}
		}
		else if(owner="player"){
			draw_line_width_color(previous_x+sprite_width/2,previous_y-sprite_height/2,bbox_right,bbox_top,4,c_fuchsia,c_red);
			if(ds_list_size(lines_x)>1){
				for(var index=0;index<ds_list_size(lines_x)-1;index++){
					draw_line_width_color(ds_list_find_value(lines_x,index)+sprite_width/2,ds_list_find_value(lines_y,index)-sprite_height/2,ds_list_find_value(lines_x,index+1)+sprite_width/2,ds_list_find_value(lines_y,index+1)-sprite_height/2,4,c_fuchsia,c_red);
				}
			}
		}
	}

