var _hover = _get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);

// Click
if (_click) {
	on_click();
}