/// @description Insert description here
// You can write your code in this editor
for (var e = 0; e < ds_list_size(level_menu_elems); e++) {
	instance_destroy(level_menu_elems[| e]);
}
ds_list_destroy(level_menu_elems)
level_menu_elems = -1;