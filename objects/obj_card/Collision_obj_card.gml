/// @description Insert description here
// You can write your code in this editor
if(!in_graveyard&&!transform&&!display){
	if(other.x>x){
		if(x-2>0&&!place_meeting(x-2,y,obj_card)){
			if(room=rm_town&&instance_exists(obj_deckEditor)){
				if(other.y=y){
					x-=2;
				}
			}
			else{
				x-=2;
			}
		}
	}
	else if(other.x<=x){
		if(room=rm_town&&instance_exists(obj_deckEditor)){
				if(other.y=y){
					x+=2;
				}
			}
			else{
				x+=2;
			}
	}
}




