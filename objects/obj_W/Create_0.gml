target_x = x;
target_y = y;
y = -sprite_height * 2;
turning = false;
rightside = true;

switch entry{
	case 0: 
		rightside = global.fullscreen;
		break;
	case 1: 
		rightside = global.vsync;
		break;
};

if (rightside){
	image_angle = 0;
	image_blend = c_purple;
}
else{
	image_angle = 180;
	image_blend = c_red;
};