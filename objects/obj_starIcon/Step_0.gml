/// @description Insert description here
// You can write your code in this editor\
if(keyboard_check(vk_anykey)){
	angle-=rotation_speed*2;
}
else{
	angle-=rotation_speed;
}
radius=circled_card.sprite_height;
if(angle<=-432&&make_star){
	current_star=instance_create_layer(-50,-50,"Instances",obj_starIcon);
	current_star.angle=angle+432;
	current_star.owner=owner;
	current_star.depth=depth;
	current_star.level=level+1;
	current_star.circled_card=circled_card;
	if(circled_card.level>current_star.level){
		current_star.make_star=true;
	}
	make_star=false;
	made_star=true;
}
else if(angle<=-432&&!make_star&&!made_star&&!circled_card.revealed){
	circled_card.revealed=true;
	circled_card.image_xscale=1/3;
	circled_card.image_yscale=1/3;
	if(circled_card.sprite_index=spr_cardPunch){
		circled_card.sprite_index=spr_cardPunch_hovered;
	}
	else if(circled_card.sprite_index=spr_cardKnife){
		circled_card.sprite_index=spr_cardKnife_hovered;
	}
}
x=circled_card.x+lengthdir_x(radius,angle);
y=circled_card.y+lengthdir_y(radius,angle);