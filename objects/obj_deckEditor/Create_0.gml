/// @description Insert description here
// You can write your code in this editor
view_x=0;
view_y=0;
view_w=0;
view_h=0;
image_alpha=0;
create_exit_button=true;
pages=ds_list_create();
ds_list_add(pages,"deck editor");
ds_list_add(pages,"rank up cards");
current_page="deck editor";
page_changed=false;
page_index=0;
last_page=1;
base_card=noone;
spent_card=noone;
merge_button_created=false;




