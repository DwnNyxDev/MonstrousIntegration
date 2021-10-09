/// @description Insert description here
// You can write your code in this editor

//movement

if(keyboard_check_pressed(vk_left)&&can_move){
	sprite_index=spr_playerBegin_walking;
	image_xscale=-1/scale;
	xspeed=-4;
	yspeed=0;
}
else if(keyboard_check_pressed(vk_right)&&can_move){
	sprite_index=spr_playerBegin_walking;
	image_xscale=1/scale;
	xspeed=4;
	yspeed=0;
}
if(keyboard_check_pressed(vk_down)&&can_move){
	sprite_index=spr_playerBegin_walkingForward;
	image_xscale=1/scale;
	yspeed=4;
	xspeed=0;
}
else if(keyboard_check_pressed(vk_up)&&can_move){
	sprite_index=spr_playerBegin_walkingBackward;
	image_xscale=1/scale;
	yspeed=-4;
	xspeed=0;
}
if((keyboard_check_released(vk_left)||keyboard_check_released(vk_right))&&can_move&&sprite_index=spr_playerBegin_walking){
	if(keyboard_check_released(vk_left)&&image_xscale<0){
		sprite_index=spr_playerBegin_idle;
	}
	else if(keyboard_check_released(vk_right)&&image_xscale>0){
		sprite_index=spr_playerBegin_idle;
	}
}
else if(keyboard_check_released(vk_up)&&can_move&&sprite_index=spr_playerBegin_walkingBackward){
	sprite_index=spr_playerBegin_idleBackward;
}
else if(keyboard_check_released(vk_down)&&can_move&&sprite_index=spr_playerBegin_walkingForward){
	sprite_index=spr_playerBegin_idleForward;
}

	if(xspeed!=0&&!keyboard_check(vk_left)&&!keyboard_check(vk_right)){
		xspeed=0;
	} 
	if(yspeed!=0&&!keyboard_check(vk_up)&&!keyboard_check(vk_down)){
		yspeed=0;
	} 



//collision with edges
if(bbox_right+xspeed>room_width&&xspeed>0){
	while(bbox_right+sign(xspeed)<room_width){
		x+=sign(xspeed);
	}
	xspeed=0;
}
else if(bbox_left+xspeed<0&&xspeed<0){
	while(bbox_left+sign(xspeed)>0){
		x+=sign(xspeed);
	}
	xspeed=0;
}

if(bbox_bottom+yspeed>room_height&&yspeed>0){
	while(bbox_bottom+sign(yspeed)<room_height){
		y+=sign(yspeed);
	}
	yspeed=0;
}
else if(bbox_top+yspeed<0&&yspeed<0){
	while(bbox_top+sign(yspeed)>0){
		y+=sign(yspeed);
	}
	yspeed=0;
}

if(tilemap_get_at_pixel(collisionMap,bbox_right+xspeed,y)&&xspeed>0){
	while(!tilemap_get_at_pixel(collisionMap,bbox_right+sign(xspeed),y)){
		x++;
	}
	xspeed=0;
}
else if(tilemap_get_at_pixel(collisionMap,bbox_left+xspeed,y)&&xspeed<0){
	while(!tilemap_get_at_pixel(collisionMap,bbox_left+sign(xspeed),y)){
		x--;
	}
	xspeed=0;
}

if(tilemap_get_at_pixel(collisionMap,x,(bbox_top+sprite_height/2)+yspeed)&&yspeed<0){
	while(!tilemap_get_at_pixel(collisionMap,x,(bbox_top+sprite_height/2)+sign(yspeed))){
		y--;
	}
	yspeed=0;
}
else if(tilemap_get_at_pixel(collisionMap,x,bbox_bottom+yspeed)&&yspeed>0){
	while(!tilemap_get_at_pixel(collisionMap,x,bbox_bottom+sign(yspeed))){
		y++;
	}
	yspeed=0;
}

if(room=rm_MurderScene){
	if(bbox_bottom+yspeed>obj_scroll.y){
		while(bbox_bottom+sign(yspeed)<obj_scroll.y){
			y+=sign(yspeed);
		}
		yspeed=0;
		if(instance_exists(obj_friendBegin)){
			with(obj_friendBegin){
				yspeed=0;
			}
		}
	}
	else if(bbox_top+xspeed<0){
		while(bbox_top+sign(yspeed)>0){
			y+=sign(yspeed);
		}
		yspeed=0;
		if(instance_exists(obj_friendBegin)){
			with(obj_friendBegin){
				yspeed=0;
			}
		}
	}

	//fine-tuning
	if(bbox_left<0&&can_move){
		while(bbox_left<0){
			x++;
		}
	}
	else if(bbox_right>room_width&&can_move){
		while(bbox_right>room_width){
			x--;
		}
	}

	if(bbox_top<0&&can_move){
		while(bbox_top<0){
			y++;
		}
	}
	else if(bbox_bottom>obj_scroll.y&&can_move){
		while(bbox_bottom>obj_scroll.y){
			y--;
		}
	}
}

if(tilemap_get_at_pixel(collisionMap,x,y-16)=68&&yspeed<0){
	if(x<room_width/2&&y>room_height/2&&!card_editor_made){
		sprite_index=spr_playerBegin_idleBackward;
		audio_pause_sound(town_bg);
		while(tilemap_get_at_pixel(collisionMap,x,y-16)!=68){
			y--;
		}
		new_deck_editor=instance_create_layer(0,0,"Instances",obj_deckEditor);
		new_deck_editor.depth=depth-1;
		card_editor_made=true;
		xspeed=0;
		yspeed=0;
		can_move=false;
	}
	else if(card_editor_made&&!instance_exists(obj_deckEditor)){
		card_editor_made=false;
	}
	if(x>room_width/2&&y>room_height/2&&!dungeon_picker_made){
		sprite_index=spr_playerBegin_idleBackward;
		audio_pause_sound(town_bg);
		while(tilemap_get_at_pixel(collisionMap,x,y-16)!=68){
			y--;
		}
		new_dungeon_picker=instance_create_layer(0,0,"Instances",obj_dungeonPicker);
		new_dungeon_picker.depth=depth-1;
		dungeon_picker_made=true;
		xspeed=0;
		yspeed=0;
		can_move=false;
	}
	else if(dungeon_picker_made&&!instance_exists(obj_dungeonPicker)){
		dungeon_picker_made=false;
	}
	if(x<room_width/2&&y<room_height/2&&!gachaMachine_made){
		audio_pause_sound(town_bg);
		sprite_index=spr_playerBegin_idleBackward;
		while(tilemap_get_at_pixel(collisionMap,x,y-16)!=68){
			y--;
		}
		new_gachaMachine=instance_create_layer(0,0,"Instances",obj_gachaMachine);
		new_gachaMachine.depth=depth-1;
		gachaMachine_made=true;
		xspeed=0;
		yspeed=0;
		can_move=false;
	}
	else if(gachaMachine_made&&!instance_exists(obj_gachaMachine)){
		gachaMachine_made=false;
	}
}



