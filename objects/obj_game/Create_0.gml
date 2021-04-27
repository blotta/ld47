if instance_number(obj_game) > 1 {
	show_debug_message("Destroyed self game instance");
	instance_destroy();
}