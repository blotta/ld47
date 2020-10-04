var _hover = _get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);
if _hover and prev_hover != _hover {
	audio_play_sound(snd_hover, 10, false);
}
prev_hover = _hover;

// Click
if (_click) {
	audio_play_sound(snd_select, 10, false);
	on_click();	
}
