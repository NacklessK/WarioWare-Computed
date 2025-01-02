target_x = x;
target_y = y;
y = -sprite_height * 2;
turning = false;
rightside = true;

switch entry{
	case 0: rightside = window_get_fullscreen();
};

image_angle = 180 * -rightside + 180;