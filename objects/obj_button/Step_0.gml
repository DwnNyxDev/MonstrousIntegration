/// @description Insert description here
// You can write your code in this editor
if(type!="Continue"){
	if(instance_exists(obj_winScreen)){
		image_alpha=1-obj_winScreen.image_xscale;
	}
}
if(type="Start"){
		if(hovered){
			if(xOffset<10){
				image_blend=merge_color(color,make_color_rgb(138,230,255),xOffset/10);
				xOffset+=.4;
				x+=.4;
			}
		}
		else if(!hovered){
			if(xOffset>0){
				image_blend=merge_color(color,make_color_rgb(138,230,255),xOffset/10);
				
				xOffset-=.4;
				if(xOffset<=0){
					previous_color=new_color;
					new_color=make_color_rgb(random_range(0,255),random_range(0,255),random_range(0,255));
				}
				x-=.4;
			}
		}
}

if(hovered){
	if(type="Exit"){
		image_blend=c_red;
	}
	if(type="Left Arrow"||type="Right Arrow"){
		image_blend=c_fuchsia;
	}
}
else{
	if(type="Left Arrow"||type="Right Arrow"||type="Exit"){
		image_blend=c_white;
	}
}
if(type="Draw"){
	if(global.gold<100){
		image_blend=c_red;
	}
	else{
		image_blend=c_lime;
	}
}
else if(type="Draw x10"){
	if(global.gold<1000){
		image_blend=c_red;
	}
	else{
		image_blend=c_lime;
	}
}