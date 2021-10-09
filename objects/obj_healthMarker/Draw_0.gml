/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(color);
draw_set_font(Phase_fnt);
draw_set_alpha(lerp(0,1,changing_timer/timer));
draw_text(x,y,message);
draw_set_alpha(1);

