/// @description Insert description here
// You can write your code in this editor
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);

if(image_alpha<1&&!summon_animation){
	image_alpha+=.01;
}

if(create_exit_button&&image_alpha>=1){
	camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],room_width/2,room_height/2);
camera_set_view_target(view_camera[0],noone);
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);
view_w=camera_get_view_width(view_camera[0]);
view_h=camera_get_view_height(view_camera[0]);

new_button=instance_create_layer(view_x+view_w-50,view_y+50,"Instances",obj_button);
	new_button.type="Exit";
	new_button.sprite_index=spr_buttonX;
	new_button.color=c_white;
	new_button.depth=depth-1;
	new_button.image_xscale=1;
	new_button.image_yscale=1;
	new_button.fnt_color=c_ltgray;
	new_button.shape="X";
	
	new_button=instance_create_layer(view_x+view_w/2-156,view_y+view_h*.9,"Instances",obj_button);
	new_button.type="Draw";
	new_button.sprite_index=spr_button;
	new_button.image_blend=c_lime;
	new_button.color=c_lime;
	new_button.depth=depth-1;
	new_button.image_xscale=120;
	new_button.image_yscale=60;
	new_button.fnt_color=c_silver;
	new_button.shape="rectangle";
	
	new_button=instance_create_layer(view_x+view_w/2+32,view_y+view_h*.9,"Instances",obj_button);
	new_button.type="Draw x10";
	new_button.sprite_index=spr_button;
	new_button.image_blend=c_lime;
	new_button.color=c_lime;
	new_button.depth=depth-1;
	new_button.image_xscale=120;
	new_button.image_yscale=60;
	new_button.fnt_color=c_white;
	new_button.shape="rectangle";
	
	new_card=instance_create_layer(view_x+view_w/2,view_y+view_h*(2/3),"Instances",obj_card);
	new_card.position=1;
	new_card.sprite_index=spr_cardPunch_hovered;
	new_card.depth=depth-2;
	new_card.level=1;
	new_card.image_alpha=1;
	new_card.owner="player";
		new_card.display=true;
	new_card=instance_create_layer(view_x+view_w*.75,view_y+view_h/2,"Instances",obj_card);
	new_card.position=2;
	new_card.sprite_index=spr_cardKnife;
	new_card.depth=depth-2;
	new_card.image_blend=c_gray
	new_card.image_alpha=.75;
	new_card.level=5;
	new_card.owner="player";
		new_card.display=true;
	new_card=instance_create_layer(view_x+view_w/2,view_y+view_h/3,"Instances",obj_card);
	new_card.position=3;
	new_card.sprite_index=spr_cardPunch;
	new_card.depth=depth-1;
	new_card.image_alpha=.5;
	new_card.owner="player";
	new_card.level=5;
		new_card.display=true;
	new_card=instance_create_layer(view_x+view_w*.25,view_y+view_h/2,"Instances",obj_card);
	new_card.position=4;
	new_card.sprite_index=spr_cardKnife;
	new_card.depth=depth-2;
	new_card.owner="player";
	new_card.image_blend=c_gray;
	new_card.image_alpha=.75;
	new_card.level=1;
	new_card.display=true;
	timer=room_speed*3;
	create_exit_button=false;
}

if(timer>0&&!obj_card.card_hovered&&!summon_animation){
	timer--;
}
else if(timer=0){
	transition=true;
	transition_amount=0;
	timer=-1;
}

if(transition&&!summon_animation){
	if(transition_amount<1){
		transition_amount+=.01;
		with(obj_card){
			position+=.01;
			if(position>=5){
				position=1;
			}
		}
		
	}
	else{
		transition=false;
		timer=room_speed*3;
		with(obj_card){
			position=round(position);
		}
	}
}

if(summon_animation&&!summon_screen){
	if(!instance_exists(obj_battleFlash)){
		new_flash=instance_create_layer(0,0,"Instances",obj_battleFlash);
		new_flash.depth=-100;
	}
	obj_battleFlash.image_blend=c_black;
	if(obj_battleFlash.image_alpha<1&&fade_out){
		obj_battleFlash.image_alpha+=.005;
		if(obj_battleFlash.image_alpha>=1){
			fade_out=false;
			if(!summon_end){
				sprite_index=spr_citySummon;
				obj_button.image_alpha=0;
				obj_card.image_alpha=0;
			}
			else{
				sprite_index=noone;
				obj_button.image_alpha=1;
				obj_card.image_alpha=1;
			}
		}
	}
	 else if(obj_battleFlash.image_alpha>0&&!fade_out){
		obj_battleFlash.image_alpha-=.005;
		if(obj_battleFlash.image_alpha<=0){
			if(!summon_end){
				summon_screen=true;
			}
			else{
				summon_end=false;
				summon_animation=false;
			}
			fade_out=true;
		}
	}
}
if(summon_screen&&!instance_exists(summon_card)&&!summon_end){
	show_debug_message("running")
			summon_card=instance_create_layer(view_x+view_w/2,view_y+view_h/2,"Instances",obj_card);
			summon_card.position=-1;
			summon_card.sprite_index=choose(spr_cardPunch,spr_cardKnife);
			summon_card.depth=depth-1;
			summon_card.image_alpha=1;
			summon_card.owner="player";
			summon_card.revealed=false;
			var rando=random_range(0,1000);
			if(!multiple_summons){
				
				if(rando<=650){
					summon_card.level=1;
				}
				else if(rando<=850){
					summon_card.level=2;
				}
				
				else if(rando<=950){
					summon_card.level=3;
				}
				else if(rando<=990){
					summon_card.level=4;
				}
				
				else if(rando<=1000){
					summon_card.level=5;
				}
			}
			else if(multiple_summons){
				if(rando<=450){
					summon_card.level=1;
				}
				else if(rando<=750){
					summon_card.level=2;
				}
				else if(rando<=900){
					summon_card.level=3;
				}
				else if(rando<=975){
					summon_card.level=4;
				}
				else if(rando<=1000){
					summon_card.level=5;
				}
			}
			summon_card.display=true;
			summon_card.image_alpha=0;
			var card=ds_map_create();
			if(summon_card.sprite_index=spr_cardPunch){
				ds_map_add(card,"name","Punch");
			}
			else if(summon_card.sprite_index=spr_cardKnife){
				ds_map_add(card,"name","Knife Slash");
			}
			ds_map_add(card,"level",summon_card.level);
			ds_map_add(card,"in_deck",false);
			ds_map_add(card,"type","player");
			ds_list_add(global.card_inventory,card);
			save_game();
			cards_created++;
			if((cards_created>=10&&multiple_summons)||!multiple_summons){
				summon_end=true;
			}
}
else if(summon_screen&&instance_exists(summon_card)){
	if(summon_card.image_alpha<1&&!summon_card.revealed){
		summon_card.image_alpha+=.01;
	}
	else{
		if(!instance_exists(obj_starIcon)&&!summon_card.revealed){
			current_star=instance_create_layer(-50,-50,"Instances",obj_starIcon);
			current_star.owner=id;
			current_star.depth=depth-1;
			current_star.circled_card=summon_card;
			if(summon_card.level>1){
				current_star.make_star=true;
			}
		}
		else if(summon_card.revealed){
			if(summon_card.image_xscale<1){
				summon_card.image_xscale+=.005;
				summon_card.image_yscale+=.005;
			}
			else if(summon_card.bbox_bottom>view_y){
				if(keyboard_check(vk_space)){
					summon_card.y-=3;
				}
				else{
					summon_card.y-=1;
				}
				summon_card.image_alpha=lerp(0,1,summon_card.bbox_bottom/(view_y+view_h/2));
			}
			else{
				instance_destroy(obj_starIcon);
				instance_destroy(summon_card);
				if(summon_end){
					summon_animation=true;
					summon_screen=false;
				}
			}
		}
	}
	if(keyboard_check_pressed(vk_space)&&!summon_card.revealed){
		summon_card.revealed=true;
		summon_card.image_xscale=1;
		summon_card.image_yscale=1;
		instance_destroy(obj_starIcon);
		for(var index=0;index<summon_card.level;index++){
			current_star=instance_create_layer(-50,-50,"Instances",obj_starIcon);
			current_star.owner=id;
			current_star.angle=-72*index;
			current_star.depth=depth-1;
			current_star.circled_card=summon_card;
		}
		if(summon_card.sprite_index=spr_cardPunch){
			summon_card.sprite_index=spr_cardPunch_hovered;
			}
			else if(summon_card.sprite_index=spr_cardKnife){
				summon_card.sprite_index=spr_cardKnife_hovered;
			}
	}
}