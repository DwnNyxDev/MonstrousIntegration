/// @description Insert description here
// You can write your code in this editor
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);

if(image_alpha<1){
	image_alpha+=.01;
}

if(create_exit_button&&image_alpha>=1){
	camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],room_width/2,room_height/2);
camera_set_view_target(view_camera[0],noone);
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);

new_button=instance_create_layer(view_x+view_w-50,view_y+50,"Instances",obj_button);
	new_button.type="Exit";
	new_button.sprite_index=spr_buttonX;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="X";
	
	spider_button=instance_create_layer(view_x+view_w/6,view_y+view_h/6,"Instances",obj_button);
	spider_button.type="Enemy";
	spider_button.sprite_index=spr_spider_idle;
	spider_button.color=c_white;
	spider_button.depth=depth-1;
	spider_button.image_xscale=1;
	spider_button.image_yscale=1;
	spider_button.fnt_color=c_ltgray;
	spider_button.shape="Spider";
	
	wolf_button=instance_create_layer(view_x+view_w/3,view_y+view_h/6,"Instances",obj_button);
	wolf_button.type="Enemy";
	wolf_button.sprite_index=spr_wolf_idle;
	wolf_button.color=c_white;
	wolf_button.depth=depth-1;
	wolf_button.image_xscale=1;
	wolf_button.image_yscale=1;
	wolf_button.fnt_color=c_ltgray;
	wolf_button.shape="Wolf";
	
	new_button=instance_create_layer(view_x+view_w/2-85,view_y+view_h*.9+15,"Instances",obj_button);
	new_button.type="Left Arrow";
	new_button.sprite_index=spr_leftArrow;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="Left Arrow";
	
	new_button=instance_create_layer(view_x+view_w/2+85,view_y+view_h*.9+15,"Instances",obj_button);
	new_button.type="Right Arrow";
	new_button.sprite_index=spr_leftArrow;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=-1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="Left Arrow";
	create_exit_button=false;
}
