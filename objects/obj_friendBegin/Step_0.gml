/// @description Insert description here
// You can write your code in this editor

//movement
/*
if(keyboard_check(vk_left)&&can_move){
	sprite_index=spr_friendBegin_walking;
	image_xscale=-1;
	xspeed=-4;
}
else if(keyboard_check(vk_right)&&can_move){
	sprite_index=spr_friendBegin_walking;
	image_xscale=1;
	xspeed=4;
}
else{
	sprite_index=spr_friendBegin_idle;
	if(xspeed!=0){
		xspeed-=sign(xspeed)/5;
	}
}
*/

//collision with the edges
if(bbox_right+xspeed>room_width){
	while(bbox_right+sign(xspeed)<room_width){
		x+=sign(xspeed);
	}
	xspeed=0;
	with(obj_playerBegin){
		xspeed=0;
	}
}
else if(bbox_left+xspeed<0){
	while(bbox_left+sign(xspeed)>0){
		x+=sign(xspeed);
	}
	xspeed=0;
	with(obj_playerBegin){
		xspeed=0;
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
