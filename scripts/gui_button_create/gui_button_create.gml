// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_button_create(_x, _y, _width, _height, _text, _on_click, _layer){
	
	var _button = instance_create_layer(_x, _y, _layer, obj_button);
	
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		on_click = _on_click;
	}
	
	return _button;
}