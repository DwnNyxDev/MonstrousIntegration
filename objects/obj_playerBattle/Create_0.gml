/// @description Insert description here
// You can write your code in this editor
player_life=10;
draw_card_ai=false;
choose_card_ai=false;
deck=noone;
hand=ds_list_create();
ai=false;
bleeding=false;
bleeding_turns=0;
bleeding_damage=0;
poisoned=false;
poisoned_attacks=0;
poisoned_modifier="+1";
type="player";
stuck=false;
first_turn_after=false;
first_turn_after_reduce=false;
bled=false;
invincible=false;
new_graveyard=noone;
turn_passed=false;
stuck_resist=false;
stuck_resist_turns=0;
attack_buff=noone;
attack_buff_turns=0;
attack_reduce=noone;
attack_reduce_turns=0;