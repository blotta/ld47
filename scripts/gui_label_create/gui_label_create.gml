// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_label_create(_x, _y, _text, _layer){
	var _label = instance_create_layer(_x, _y, _layer, obj_label);
	
	with (_label) {
		text = _text;
	}
	
	return _label;
}