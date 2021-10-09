/// @description Insert description here
// You can write your code in this editor
battle_started=false;
xOffset=0;
sprite_alpha=0;
fight_for_first=false;
have_fought=false;
player_value=.5;
name_alpha=1;
name_recede=true;
new_player=noone;
new_enemy=noone;
enemy_name=noone;
//alarm[0]=1;
camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],room_width,room_height);
audio_play_sound(battle_bg,-1,true);
