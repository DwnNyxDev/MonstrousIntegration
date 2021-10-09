/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(can_move){
	if(owner="player"){
		if(y>room_height/2){
			y-=3;
		}
		else{
			if(y<room_height/2&&!web_made&&(sticky||poison)){
				new_web=instance_create_layer(room_width/2,room_height/4,"Instances",obj_web);
				if(sticky){
					new_web.sprite_index=spr_web;
				}
				else if(poison){
					new_web.sprite_index=spr_poisonSkull
				}
				new_web.owner=id;
				new_web.depth=depth-1;
				web_made=true;
			}
			if(!slashing&&slashes>0){
				slashes--;
				slashing=true;
				previous_x=x;
				previous_y=y;
				ds_list_add(lines_x,x);
				ds_list_add(lines_y,y);
				new_y=random_range(room_height/2-sprite_height/2,0+sprite_height/2);

				if(x=room_width/2||x>=room_width-sprite_width/2-1){
					show_debug_message("working");
					new_x=sprite_width/2;
				}
				else if(x<=sprite_width/2){
					new_x=room_width-sprite_width/2;
				}
				alarm[1]=flash_timer;
			}
			else if(slashing){
				if(transfer_amount<1&&obj_battleFlash.image_alpha=0){
					transfer_amount+=.01;
					x=lerp(previous_x,new_x,transfer_amount);
					y=lerp(previous_y,new_y,transfer_amount);
				}
				else if(transfer_amount>=1){
					ds_list_add(lines_x,x);
					ds_list_add(lines_y,y);
					if(alarm_get(0)<=0){
						alarm[0]=room_speed*.25;
					}
				}
			}
		}
	}
	else if(owner="enemy"){
		if(y<room_height/2){
			y+=3;
		}
		else if(!slashing&&slashes>0){
			slashes--;
			slashing=true;
			previous_x=x;
			previous_y=y;
			ds_list_add(lines_x,x);
			ds_list_add(lines_y,y);
			new_y=random_range(room_height/2+sprite_height/2,room_height-sprite_height/2);

			if(x=room_width/2||x>=room_width-sprite_width/2-1){
				show_debug_message("working");
				new_x=sprite_width/2;
			}
			else if(x<=sprite_width/2){
				new_x=room_width-sprite_width/2;
			}
			alarm[1]=flash_timer;
		}
		else if(slashing){
			if(transfer_amount<1&&obj_battleFlash.image_alpha=0){
				transfer_amount+=.01;
				x=lerp(previous_x,new_x,transfer_amount);
				y=lerp(previous_y,new_y,transfer_amount);
			}
			else if(transfer_amount>=1){
				ds_list_add(lines_x,x);
				ds_list_add(lines_y,y);
				if(alarm_get(0)<=0){
					alarm[0]=room_speed*.25;
				}
			}
		}
		
	}
}
/*
cam_x=camera_get_view_x(view_camera[0]);
cam_y=camera_get_view_y(view_camera[0]);
cam_w=camera_get_view_width(view_camera[0]);
cam_h=camera_get_view_height(view_camera[0]);

if(cam_x<x-200){
	camera_set_view_pos(view_camera[0],cam_x+2,cam_y);
	cam_x=camera_get_view_x(view_camera[0]);

	new_cam_y=lerp(0,y-200,cam_x/(x-200));
	if(cam_y<new_cam_y){
		camera_set_view_pos(view_camera[0],cam_x,new_cam_y);

	}
	camera_set_view_size(view_camera[0],lerp(1024,400,cam_x/(x-200)),lerp(576,400,cam_x/(x-200)));

}
else{
	camera_set_view_target(view_camera[0],id);
	camera_set_view_border(view_camera[0],200,200);
	can_move=true;
}
*/