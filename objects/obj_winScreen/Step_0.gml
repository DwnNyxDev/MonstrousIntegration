/// @description Insert description here
// You can write your code in this editor
if(image_xscale<1){
	image_xscale+=.01;
	if(image_xscale>=1){
		new_button=instance_create_layer(x-30,room_height*.7,"Instances",obj_button);
	new_button.depth=depth-1;
	new_button.type="Continue";
	new_button.image_blend=c_gray;
	new_button.image_xscale=60;
	new_button.image_yscale=30;
	new_button.fnt_color=c_ltgray;
	new_button.shape="rectangle";
	}
}
if(image_yscale<1){
	image_yscale+=.01;
}


