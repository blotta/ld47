// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RotatingState(){
	// input
	if mouse_check_button_pressed(mb_left) {
		speed = abs(pivot_angvel) * pivot_radius / (room_speed * room_speed);
		state = PlayerState.STRAIGHT;
		return;
	}

	// next position
	var previous_pivot_angle = pivot_angle;
	pivot_angle += pivot_angvel / room_speed; //  * 360 / room_speed;

	var nx = pivot_x + lengthdir_x(pivot_radius, pivot_angle);
	var ny = pivot_y + lengthdir_y(pivot_radius, pivot_angle);

	// collision
	if (place_meeting(nx, ny, obj_collision)) {
		//pivot_angle = previous_pivot_angle;
		
		var partial_angle = previous_pivot_angle + sign(pivot_angvel) / room_speed;
		nx = pivot_x + lengthdir_x(pivot_radius, partial_angle);
		ny = pivot_y + lengthdir_y(pivot_radius, partial_angle);
		while(!place_meeting(nx, ny, obj_collision)) {
			partial_angle += sign(pivot_angvel) / room_speed;
			nx = pivot_x + lengthdir_x(pivot_radius, partial_angle);
			ny = pivot_y + lengthdir_y(pivot_radius, partial_angle);
		}
		
		pivot_angvel = -pivot_angvel;
		pivot_angle = partial_angle;
	}
	
	// Apply
	x = nx;
	y = ny;
	direction = pivot_angle + 90 * sign(pivot_angvel);
	image_angle = direction;


}