
paused = false;

spawn = instance_find(obj_start, 0);

finish = instance_find(obj_finish, 0);

level_menu_elems = ds_list_create();


// Player
player = instance_create_layer(spawn.x, spawn.y, "Instances", obj_electron);

instance_destroy(spawn);

// Level specific

// 1st
show_debug_message(room);
if (room == rm_level1) {

} else if (room == rm_level2) {
	
}