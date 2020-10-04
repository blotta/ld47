
//global.partSystem = part_system_create();
//show_debug_message("part sys: " + string(global.partSys));

global.partSys = part_system_create();

show_debug_message("part sys: " + string(global.partSys));

pe = part_emitter_create(global.partSys);
part_emitter_region(global.partSys, pe, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);



var _p = part_type_create();

part_type_shape(_p, pt_shape_disk);
part_type_life(_p, 0.5 * room_speed, 1 * room_speed);
part_type_color_mix(_p, $FF00A4E5, c_white)
part_type_alpha3(_p, 0, 0.1, 0);
part_type_size(_p, 0.5, 5, 0.05, 0.05);

//global.ptBasic = _p;
ptBasic = _p;


// how it looks
part_emitter_stream(global.partSys, pe, ptBasic, -20);