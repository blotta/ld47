// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_panel_create(_x1, _y1, _x2, _y2, _layer){
	var _panel = instance_create_layer(_x1, _y1, _layer, obj_panel);
	with (_panel) {
		x = _x1;
		y = _y1;
		x2 = _x2;
		y2 = _y2;
	}
	
	return _panel;
		
}