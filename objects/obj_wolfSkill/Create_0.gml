/// @description Insert description here
// You can write your code in this editor
owner=noone;
enemy=noone;
damage=0;
image_xscale=0;
image_yscale=0;
can_move=true;
slashes=3;
slashing=false;
new_x=0;
new_y=0;
previous_x=0;
previous_y=0;
transfer_amount=0;
flash_timer=15;
stuck_resist=false;
stuck_resist_turns=0;
attack_buff=noone;
attack_buff_turns=0;
attack_reduce=noone;
attack_reduce_turns=noone;
attack_made=false;
new_attack=noone;
global.camera_movement=true;
lines_x=ds_list_create()
lines_y=ds_list_create()
type=noone;