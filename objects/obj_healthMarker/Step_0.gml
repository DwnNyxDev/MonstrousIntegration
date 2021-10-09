/// @description Insert description here
// You can write your code in this editor
if(move_direction="down"){
	y++;
	
}
else if(move_direction="up"){
	y--;
}
if(changing_timer=-1){
	changing_timer=timer;
}
changing_timer--;
if(changing_timer=0){
	instance_destroy();
}

