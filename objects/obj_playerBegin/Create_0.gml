/// @description Insert description here
// You can write your code in this editor
xspeed=0;
yspeed=0;
can_battle=true;
in_battle=false;
can_move=true;
talking_to=noone;
scale=1;
card_editor_made=false;
dungeon_picker_made=false;
gachaMachine_made=false;
multiplayerLobby_made=false;
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);
collisionMap=layer_tilemap_get_id("Tiles_Objects");
if(room=rm_town){
	image_xscale=.5;
	image_yscale=.5;
	scale=2;
	can_move=true;
	sprite_index=spr_playerBegin_idle;
	camera_set_view_pos(view_camera[0],x-200,y-200);
	camera_set_view_size(view_camera[0],400,400);
	camera_set_view_target(view_camera[0],id);
}