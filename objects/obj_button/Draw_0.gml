/// @description Insert description here
// You can write your code in this editor
draw_self();
if(shape="rectangle"){
	draw_set_font(card_descript_fnt);
	draw_set_color(fnt_color);
	draw_set_alpha(image_alpha);
	
	if(type="Auto"){
		draw_set_halign(fa_center);
		draw_text(x+sprite_width/4,y+sprite_height*.4,type);
		draw_sprite_ext(spr_spinningArrow,0,x+sprite_width*.75,y+sprite_height/2,.4,.4,arrowRotation,fnt_color,image_alpha);
		if(obj_battle.new_player.ai){
			arrowRotation-=5;
		}
	}
	else if(type="Continue"||type="Merge"||type="Draw"||type="Draw x10"||type="Host"||type="Join"){
		draw_set_halign(fa_center);
		if(type="Draw"){
			draw_text(x+sprite_width/2,y+sprite_height*.3,type);
			draw_text(x+sprite_width/2,y+sprite_height*.6,"100 Gold");
		}
		else if(type="Draw x10"){
			draw_text(x+sprite_width/2,y+sprite_height*.3,type);
			draw_text(x+sprite_width/2,y+sprite_height*.6,"1000 Gold");
		}
		else{
			if(type="Host"||type="Join"){
				draw_set_font(Phase_fnt);
			}
			draw_text(x+sprite_width/2,y+sprite_height*.4,type);
		}
	}
}
else if(shape="arrow"){
	if(type="Start"){
		draw_set_halign(fa_left);
		draw_set_color(merge_color(fnt_color,c_aqua,xOffset/10));
		draw_set_font(default_fnt);
		draw_text(x+xOffset,bbox_top+sprite_height*.25,type);
		draw_line_width_color(x+xOffset,bbox_bottom-7,x+xOffset+lerp(0,33,xOffset/10),bbox_bottom-7,2,merge_color(previous_color,new_color,xOffset/10),merge_color(previous_color,new_color,xOffset/10));
	}
}
else if(shape="X"){
	if(type="Exit"){
	}
}
else if(type="Enemy"&&hovered){
	if(shape="Spider"){
		draw_set_font(default_fnt);
		draw_set_halign(fa_center);
		if(global.dungeon_level=1){
			draw_text(x,bbox_bottom,"Level 1");
			draw_text(x,bbox_bottom+15,"Health:15");
			draw_text(x,bbox_bottom+30,"Card Lvl: 1-2");
			draw_text(x,bbox_bottom+45,"# of Cards: 6");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Sticky Web/Poison Slash");
			draw_text(x,bbox_bottom+90," Lvl 1 100%");
		}
		else if(global.dungeon_level=2){
			draw_text(x,bbox_bottom,"Level 2");
			draw_text(x,bbox_bottom+15,"Health:25");
			draw_text(x,bbox_bottom+30,"Card Lvl: 2-3");
			draw_text(x,bbox_bottom+45,"# of Cards: 10");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Sticky Web/Poison Slash");
			draw_text(x,bbox_bottom+90," Lvl 1 65%");
			draw_text(x,bbox_bottom+105," Lvl 2 35%");
		}
		else if(global.dungeon_level=3){
			draw_text(x,bbox_bottom,"Level 3");
			draw_text(x,bbox_bottom+15,"Health:40");
			draw_text(x,bbox_bottom+30,"Card Lvl: 2-4");
			draw_text(x,bbox_bottom+45,"# of Cards: 12");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Sticky Web/Poison Slash");
			draw_text(x,bbox_bottom+90," Lvl 2 80%");
			draw_text(x,bbox_bottom+105," Lvl 3 20%");
			
		}
	}
	else if(shape="Wolf"){
		draw_set_font(default_fnt);
		draw_set_halign(fa_center);
		if(global.dungeon_level=1){
			draw_text(x,bbox_bottom,"Level 1");
			draw_text(x,bbox_bottom+15,"Health:28");
			draw_text(x,bbox_bottom+30,"Card Lvl: 2-3");
			draw_text(x,bbox_bottom+45,"# of Cards: 10");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Call of the Wild/Fangs/For the Hunt");
			draw_text(x,bbox_bottom+90," Lvl 1 100%");
		}
		else if(global.dungeon_level=2){
			draw_text(x,bbox_bottom,"Level 2");
			draw_text(x,bbox_bottom+15,"Health:48");
			draw_text(x,bbox_bottom+30,"Card Lvl: 3-4");
			draw_text(x,bbox_bottom+45,"# of Cards: 16");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Call of the Wild/Fangs/For the Hunt");
			draw_text(x,bbox_bottom+90," Lvl 1 65%");
			draw_text(x,bbox_bottom+105," Lvl 2 35%");
		}
		else if(global.dungeon_level=3){
			draw_text(x,bbox_bottom,"Level 3");
			draw_text(x,bbox_bottom+15,"Health:60");
			draw_text(x,bbox_bottom+30,"Card Lvl: 3-5");
			draw_text(x,bbox_bottom+45,"# of Cards: 18");
			draw_text(x,bbox_bottom+60,"Possible Rewards:");
			draw_text(x,bbox_bottom+75,"Call of the Wild/Fangs/For the Hunt");
			draw_text(x,bbox_bottom+90," Lvl 2 80%");
			draw_text(x,bbox_bottom+105," Lvl 3 20%");
			
		}
	}
}