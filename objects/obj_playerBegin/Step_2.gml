/// @description Insert description here
// You can write your code in this editor
x+=xspeed;
y+=yspeed;
if(xspeed=4||xspeed=-4||yspeed=4||yspeed=-4){
	if(tilemap_get_at_pixel(layer_tilemap_get_id("Tiles_Background"),x,y)=8){
		if(audio_is_playing(concrete_sfx)){
			audio_pause_sound(concrete_sfx);
		}
		if(audio_is_playing(grass_sfx)){
			audio_resume_sound(grass_sfx);
		}
		else{
			audio_play_sound(grass_sfx,0,true);
		}
	}
	else if(tilemap_get_at_pixel(layer_tilemap_get_id("Tiles_Background"),x,y)=35||tilemap_get_at_pixel(layer_tilemap_get_id("Tiles_Background"),x,y)=50){
		if(audio_is_playing(grass_sfx)){
			audio_pause_sound(grass_sfx);
		}
		if(audio_is_playing(concrete_sfx)){
			audio_resume_sound(concrete_sfx)
		}
		else{
			audio_play_sound(concrete_sfx,0,true)
		}
	}
}
else{
	if(audio_is_playing(grass_sfx)){
		audio_pause_sound(grass_sfx);
	}
	if(audio_is_playing(concrete_sfx)){
		audio_pause_sound(concrete_sfx);
	}
}