var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];

if (_eventType == "sequence event") {
	switch (_message) {
		case "destroy_anim_done":
			show_debug_message("Player died");
			layer_sequence_destroy(_elementID);
			_level_menu("DESTROYED");
			break;

		case "finish_anim_done":
			layer_sequence_destroy(_elementID);
			_level_menu("PASSED");
			break;
	}
}