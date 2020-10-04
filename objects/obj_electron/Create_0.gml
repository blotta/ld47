
enum PlayerState {
	ROTATING,
	STRAIGHT,
	FINISHED,
	EXPLODED
}

state = PlayerState.ROTATING;

direction = 90
image_angle = direction;

pivot_radius = 120;
pivot_x = x - pivot_radius;
pivot_y = y;
pivot_angle = 0;
pivot_angvel = 270;