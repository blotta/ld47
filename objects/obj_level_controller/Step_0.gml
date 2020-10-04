
if (keyboard_check_pressed(vk_escape)) {
	paused = !paused;
	
	if (paused) {
		instance_deactivate_layer(layer_get_id("Instances"));
		_level_menu(); // populates level_menu_elems
	} else {
		instance_activate_layer(layer_get_id("Instances"));
		// destroy panel and btns
		for (var e = 0; e < ds_list_size(level_menu_elems); e++) {
			instance_destroy(level_menu_elems[| e]);
		}
		ds_list_destroy(level_menu_elems);
		
		level_menu_elems = ds_list_create();
	}
}