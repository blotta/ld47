// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _level_menu(msg){
	if is_undefined(msg) msg = "PAUSED";

	var w = display_get_gui_width();
	var h = display_get_gui_height();
	
	var panel = gui_panel_create(
		w * 1/2 - 250,
		h * 1/2 - 150,
		w * 1/2 + 250,
		h * 1/2 + 150,
		layer);
	ds_list_add(level_menu_elems, panel);
	
	var btn_w = 100;
	var btn_h = 40;
	var next_btn = gui_button_create(
		panel.x + ((panel.x2 - panel.x) * (3/4)) - (btn_w / 2),
		panel.y2 - 120 + (btn_h / 2),
		btn_w, btn_h,
		"NEXT",
		_next_level,
		layer);
	next_btn.depth = panel.depth - 10;
	ds_list_add(level_menu_elems, next_btn);
	
	var retry_btn = gui_button_create(
		panel.x + ((panel.x2 - panel.x) * (1/2)) - (btn_w / 2),
		panel.y2 - 120 + (btn_h / 2),
		btn_w, btn_h,
		"RETRY",
		_retry_level,
		layer);
	retry_btn.depth = panel.depth - 10;
	ds_list_add(level_menu_elems, retry_btn);
	
	var back_btn = gui_button_create(
		panel.x + ((panel.x2 - panel.x) * (1/4)) - (btn_w / 2),
		panel.y2 - 120 + (btn_h / 2),
		btn_w, btn_h,
		"BACK",
		_back_to_menu,
		layer);
	back_btn.depth = panel.depth - 10;
	ds_list_add(level_menu_elems, back_btn);
	
	var label = gui_label_create(
		panel.x + ((panel.x2 - panel.x) * (1/2)),
		panel.y + 120,
		msg,
		layer);
	label.font = fnt_mont_regular_40;
	label.halign = fa_center;
	label.valign = fa_middle;
	label.color1 = $FF00A4E5;
	label.color2 = $FF00A4E5;
	//label.size = 50;
	label.depth = panel.depth - 10;
	ds_list_add(level_menu_elems, label);
}

function _next_level() {
	if room_next(room) != -1 {
		room_goto_next();
	} else {
		room_goto(rm_menu);
	}
}

function _retry_level() {
	room_goto(room);
}

function _back_to_menu() {
	room_goto(rm_menu);
}