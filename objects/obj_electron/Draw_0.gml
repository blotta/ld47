// draw_set_alpha(0.5);
shader_set(shd_blur);
draw_circle_color(pivot_x, pivot_y, pivot_radius, c_aqua, c_aqua, true);
shader_reset();
// draw_set_alpha(1);
draw_self();

// NOSE
//var nose_x = x + lengthdir_x(23, direction);
//var nose_y = y + lengthdir_y(23, direction);
//draw_circle_color(nose_x, nose_y, 3, c_aqua, c_aqua, false);


// minimap
//var w = tilemap_get_width(tm)
//var h = tilemap_get_height(tm)
//var size = 5;
//for (var i = 0; i < w; i++) {
	
//	for (var j = 0; j < h; j++) {
//		var color = c_aqua;
//		var tile = tilemap_get(tm, i, j);
//		if (tile > 0) color = c_white;
//		//show_debug_message(tile);
//		var x1 = i * size;
//		var y1 = j * size;
//		var x2 = (i + 1) * size;
//		var y2 = (j + 1) * size;
//		draw_rectangle_color(
//			x1, y1,
//			x2, y2,
//			color, color, color, color, false);
//	}
//}


//for (var i = 0; i < w; i++) {	
//	draw_line_color(i * size, 0, i*size, size * h, c_gray, c_gray);
//}

//for (var j = 0; j < h; j++) {
//	draw_line_color(0, j * size, w * size, j * size, c_gray, c_gray);
//}

//draw_circle_color(
//	tilemap_get_cell_x_at_pixel(tm, x, y) * size,
//	tilemap_get_cell_y_at_pixel(tm, x, y) * size, 2, c_white, c_white, false);