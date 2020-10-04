if (keyboard_check_pressed(vk_space)) pivot_angvel = -pivot_angvel;


switch (state)
{
	case PlayerState.ROTATING:
		RotatingState();
		break;
	case PlayerState.STRAIGHT:
		StraightState();
		break;
	//case PlayerState.FINISHED:
	//	FinishedState();
	//	break;
}