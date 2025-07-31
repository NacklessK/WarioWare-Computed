timer = 0
x_vel = 0;
y_vel = 0;
og_x = x;
old_y = y;
portraits = [false, false, false, false];

switch room{
	case rm_intro_1:
		time = 600;
		break;
	
	case rm_intro_3:
		time = 200;
		break;
		
	case rm_intro_5:
		time = 200;
		y_vel = 0;
		break;
		
	case rm_intro_6:
		time = 150;
		y_vel = 0;
		break;
	
	case rm_intro_9:
		time = 400;
		y_vel = 0;
		break;
		
	case rm_intro_10:
		time = 200;
		x_vel = 0;
		sprite_index = spr_wario_stand_side;
		break;
};