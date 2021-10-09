/// @description Insert description here
// You can write your code in this editor
scene_transition=false;
fade_out=true
fade_amount=0;
first_scene=true;
second_scene=false;
third_scene=false;
fourth_scene=false;
fifth_scene=false;
sixth_scene=false;
seventh_scene=false;
wimp1_scene1=false;
caught_wimping_scene=false;
eighth_scene=false;
ninth_scene=false;
tenth_scene=false;
eleventh_scene=false;
twelfth_scene=false;
idle_scene=false;
thief_battle_scene=false;
thirteenth_scene=false;
player_death_scene=false;

player_dead=false;
chose_path=false;




message_side_left=undefined;
message_side_right=undefined;
draw_messages=false;

second_scene_messages = ds_list_create();  //create a list of all the dialogues that will be used

//create the dialogue, store it's message, the person who speaks it and the side it appears
new_message=ds_map_create();
ds_map_add(new_message,"text","What's up?");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueLeft);
ds_list_add(second_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","It's getting pretty late, don't you think?");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(second_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","You're right. I guess it's time to head home.");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueLeft);
ds_list_add(second_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","See you tomorrow.");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(second_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Yeah, see you.");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueLeft);
ds_list_add(second_scene_messages,new_message);

fourth_scene_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","Guess I'll head home");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueLeft);
ds_list_add(fourth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","HEEEEEELLLLLPPPP");
ds_map_add(new_message,"speaker",undefined);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",c_fuchsia);
ds_map_add(new_message,"icon",spr_unknown_dialogue_right);
ds_list_add(fourth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Oh no, someone's in trouble.");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueRight);
ds_list_add(fourth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Go and help them? Y/N");
ds_map_add(new_message,"speaker",obj_unknownSpeaker_left);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",c_red);
ds_map_add(new_message,"icon",spr_unknown_dialogue_left);
ds_list_add(fourth_scene_messages,new_message);


new_message=ds_map_create();
ds_map_add(new_message,"text","I gotta save them!");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueRight);
ds_list_add(fourth_scene_messages,new_message);

sixth_scene_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","What was that noise?");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(sixth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Wait?!?!?! Where did he go?");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(sixth_scene_messages,new_message);

caught_wimping_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","Woah woah, where are you going?");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(caught_wimping_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Didn't u hear someone calling for help?!?!");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(caught_wimping_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Yeah,ummm, I was going to get you. Let's go!!!");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueLeft);
ds_list_add(caught_wimping_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Okay, right behind you.");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(caught_wimping_messages,new_message);

eighth_scene_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","Hey lady. I said gimme ur bag. Not scream for help!");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(eighth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","I need this money to feed my family.");
ds_map_add(new_message,"speaker",obj_damselBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(179,158,90));
ds_map_add(new_message,"icon",spr_damselBegin_dialogueRight);
ds_list_add(eighth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Thanks for telling me you have money in there.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(eighth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Hand over the bag!!! NOW!!!");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(eighth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Please! Just leave me alone! I beg you!");
ds_map_add(new_message,"speaker",obj_damselBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(179,158,90));
ds_map_add(new_message,"icon",spr_damselBegin_dialogueRight);
ds_list_add(eighth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","You know I can't do that. You have something I want, and I'm gonna get it.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(eighth_scene_messages,new_message);

tenth_scene_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","Leave her alone!!!");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueRight);
ds_list_add(tenth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Ohhh nice, now I get even more money");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(tenth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Give me your money or I'll hurt her.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(tenth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Wait, I'll give you the money. Don't involve anyone else");
ds_map_add(new_message,"speaker",obj_damselBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(179,158,90));
ds_map_add(new_message,"icon",spr_damselBegin_dialogueRight);
ds_list_add(tenth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","You think I'd pass up a chance like this. Both of you hand over the money or else!!!");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(tenth_scene_messages,new_message);

twelfth_scene_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","*whispering* I'll get the girl. Try distracting him or something.");
ds_map_add(new_message,"speaker",obj_friendBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(127,145,163));
ds_map_add(new_message,"icon",spr_friendBegin_dialogueRight);
ds_list_add(twelfth_scene_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Move in front of an enemy to start a battle. Use Arrow Keys to Move.");
ds_map_add(new_message,"speaker",noone);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",c_red);
ds_map_add(new_message,"icon",spr_unknown_dialogue_left);
ds_list_add(twelfth_scene_messages,new_message);

thief_battle_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","So, you wanna fight kid. Sure, I'll take the money from your corpse.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(thief_battle_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","We'll see about that");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueRight);
ds_list_add(thief_battle_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Nooo. How did you beat me?!?!?!");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(thief_battle_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","They got away, I better skedaddle");
ds_map_add(new_message,"speaker",obj_playerBegin);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",make_color_rgb(194,192,223));
ds_map_add(new_message,"icon",spr_playerBegin_dialogueRight);
ds_list_add(thief_battle_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Hehe. You think I'll let you go that easily.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(thief_battle_messages,new_message);

player_death_messages=ds_list_create();

new_message=ds_map_create();
ds_map_add(new_message,"text","That'll teach you to mess with me.");
ds_map_add(new_message,"speaker",obj_thiefBegin);
ds_map_add(new_message,"side","left");
ds_map_add(new_message,"color",make_color_rgb(255,114,107));
ds_map_add(new_message,"icon",spr_thiefBegin_dialogueLeft);
ds_list_add(player_death_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Do you want a second chance? Y/N");
ds_map_add(new_message,"speaker",noone);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",c_red);
ds_map_add(new_message,"icon",spr_unknown_dialogue_right);
ds_list_add(player_death_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","Then Sleep... forever");
ds_map_add(new_message,"speaker",noone);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",c_red);
ds_map_add(new_message,"icon",spr_unknown_dialogue_right);
ds_list_add(player_death_messages,new_message);

new_message=ds_map_create();
ds_map_add(new_message,"text","It's time to wake up then.");
ds_map_add(new_message,"speaker",noone);
ds_map_add(new_message,"side","right");
ds_map_add(new_message,"color",c_red);
ds_map_add(new_message,"icon",spr_unknown_dialogue_right);
ds_list_add(player_death_messages,new_message);





dialogue_index=0;

