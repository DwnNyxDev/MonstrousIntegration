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
	
	new_button=instance_create_layer(view_x+view_w/3-50,view_y+view_h/2,"Instances",obj_button);
	new_button.type="Host";
	new_button.sprite_index=spr_button;
	new_button.image_blend=c_gray;
	new_button.depth=depth-1;
	new_button.image_xscale=120;
	new_button.image_yscale=60;
	new_button.fnt_color=c_fuchsia;
	new_button.shape="rectangle";
	
	new_button=instance_create_layer(view_x+(2*(view_w/3))-70,view_y+view_h/2,"Instances",obj_button);
	new_button.type="Join";
	new_button.sprite_index=spr_button;
	new_button.image_blend=c_gray;
	new_button.depth=depth-1;
	new_button.image_xscale=120;
	new_button.image_yscale=60;
	new_button.fnt_color=c_aqua;
	new_button.shape="rectangle";
	create_exit_button=false;
}
if (string_length(keyboard_string)<limit) {
    message = keyboard_string;
}
else {
    keyboard_string = message;
}