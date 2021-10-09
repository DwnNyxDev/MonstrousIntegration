/// @description Insert description here
// You can write your code in this editor
if(obj_battleFlash.image_alpha=0){
	obj_battleFlash.image_alpha=1;
	alarm[1]=flash_timer/8;
}
else{
	obj_battleFlash.image_alpha=0;
	transfer_amount=.99;
	x=lerp(previous_x,new_x,transfer_amount);
	y=lerp(previous_y,new_y,transfer_amount);
}