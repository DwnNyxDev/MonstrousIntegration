/// @description Insert description here
// You can write your code in this editor
if ( ds_map_find_value(async_load, "id") == async_event ) {
    if ( ds_map_find_value(async_load, "status") == 0 ) {
        
        str = ds_map_find_value(async_load, "result");
        instance_destroy();
        
    }
}