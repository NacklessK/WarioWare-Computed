if (global.presentation == "graphics"){
	image_xscale = obj_menu_windows.scale / 2;
	image_yscale = obj_menu_windows.scale / 2;
	x = room_width / 2 + ((target_x - room_width / 2) * (image_xscale / 2));
	y = room_height / 2 + ((target_y - room_height / 2) * (image_xscale / 2));
}

else y = -sprite_height * 2;

if (mouse_check_button_pressed(mb_left)) && (position_meeting(mouse_x, mouse_y, self)) && !(turning){
	turning = true
	switch entry{
	case 0:
		window_set_fullscreen(!rightside);
		global.fullscreen = window_get_fullscreen();
		break;
		
	case 1:
		global.vsync = !rightside;
		display_reset(0, global.vsync);
		break;
	};
};

if (turning){
	if (rightside){
		if (image_angle < 179) image_angle += (180 - image_angle) * 0.2;
		else{
			image_blend = c_red;
			turning = false;
			rightside = false
		};
	}
	
	else{
		if (image_angle > 1) image_angle += (360 - image_angle) * 0.2;
		else {
			image_blend = c_purple;
			turning = false;
			rightside = true
		};
	};
};

if (image_angle > 359) image_angle = 0;