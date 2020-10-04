
// Box
draw_set_color(merge_color(bg_normal_color, bg_highlight_color, hover));
draw_roundrect(x, y, x + width, y + height, 0);

// Text
draw_set_font(fnt_mont_regular_16);
draw_set_color(text_color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + width / 2, y + height / 2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// reset color
draw_set_color(c_white);