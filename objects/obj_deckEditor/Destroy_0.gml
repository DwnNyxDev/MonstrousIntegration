/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_card);
with(obj_button){
	if(type="Left Arrow"||type="Right Arrow"||type="Exit"||type="Merge"){
		instance_destroy();
	}
}