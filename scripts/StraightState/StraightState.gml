// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StraightState(){
	
	pivot_x += hspeed;
	pivot_y += vspeed;
	
	var prev_dir = direction;
	move_bounce_solid(false);
	image_angle = direction;
	
	if (prev_dir != direction) {
		// bounced
		pivot_angvel = -pivot_angvel;
		pivot_x = x + lengthdir_x(pivot_radius, direction + 90 * sign(pivot_angvel));
		pivot_y = y + lengthdir_y(pivot_radius, direction + 90 * sign(pivot_angvel));
		pivot_angle = point_direction(pivot_x, pivot_y, x, y);
		
		audio_play_sound(snd_bounce, 5, false);
	}
	
	if (mouse_check_button_released(mb_left)) {
		// update pivot pos
		speed = 0;
		pivot_x = x + lengthdir_x(pivot_radius, direction + 90 * sign(pivot_angvel));
		pivot_y = y + lengthdir_y(pivot_radius, direction + 90 * sign(pivot_angvel));
		state = PlayerState.ROTATING;
		audio_play_sound(snd_rotating, 5, false);
	}
}