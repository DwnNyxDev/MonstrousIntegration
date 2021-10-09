/// @description Insert description here
// You can write your code in this editor
new_flash_layer=instance_create_layer(0,0,"Instances",obj_battleFlash);
enemy=global.battle_enemy;
enemy_deck=noone;
turn=noone;
new_deck=instance_create_layer(972,508,"Instances",obj_deck);
new_player=instance_create_layer(96,512,"Instances",obj_playerBattle);
new_player.type="player";


new_button=instance_create_layer(940,room_height/2,"Instances",obj_button);
new_button.type="Auto";
new_button.image_blend=c_gray;
new_button.image_xscale=60;
new_button.image_yscale=30;
new_button.fnt_color=c_white
new_button.shape="rectangle";

new_graveyard=instance_create_layer(972,408,"Instances",obj_graveyard);
new_graveyard.owner="player";
new_player.graveyard=new_graveyard;
var deck=ds_list_create();
health_increase=0;
for(var index=0;index<ds_list_size(global.card_inventory);index++){
	if(ds_map_find_value(ds_list_find_value(global.card_inventory,index),"in_deck")){
		ds_list_add(deck,ds_list_find_value(global.card_inventory,index));
			health_increase+=ds_map_find_value(ds_list_find_value(global.card_inventory,index),"level");
	}
}
new_player.player_life=5+health_increase;
new_deck.deck=deck;
new_deck.owner=new_player;
new_player.deck=new_deck;
new_deck.screen_position="bottom";
turn=0;
if(player_value>=.5){
	whose_turn="player";
}
else{
	whose_turn="enemy";
}
turn_phase="draw";
shake="false";
shakeDur=0;
shakeForce=0;
previous_x=1;
previous_y=1;
previous_w=room_width;
previous_h=room_height;

gameOver=false;
battle_started=true;
fight_for_first=false;