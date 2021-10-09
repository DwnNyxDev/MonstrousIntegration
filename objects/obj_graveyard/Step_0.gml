/// @description Insert description here
// You can write your code in this editor
if(ds_stack_size(graveyard)>0){
	latest_card=ds_stack_top(graveyard);
	if(!latest_card.hovered){
		latest_card.x=x;
	}
}
