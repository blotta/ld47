
// border pad
var bp = 15;

draw_set_alpha(0.9);
draw_roundrect_color_ext(
	x, y, x2, y2,
	30, 30,
	bg_color, bg_color, false);

draw_set_alpha(1);
draw_roundrect_color_ext(
	x + bp, y + bp, x2 - bp, y2 - bp,
	30, 30,
	border_color, border_color, true)