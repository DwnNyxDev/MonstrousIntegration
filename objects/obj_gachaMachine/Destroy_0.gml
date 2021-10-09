/// @description Insert description here
// You can write your code in this editor
with(obj_button){
	if(type="Left Arrow"||type="Right Arrow"||type="Exit"||type="Enemy"||type="Draw"||type="Draw x10"){
		instance_destroy();
	}
}
instance_destroy(obj_card);