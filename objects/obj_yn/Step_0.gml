if (global.presentation != presentation) sprite_index = spr_empty;
else {
	sprite_index = spr_yn;
	image_index = is_yes;
	
	if (position_meeting(mouse_x, mouse_y, self)){
		obj_yn_select_box.x = x;
		obj_yn_select_box.y = y;
		if (is_yes) obj_yn_select_box.image_blend = c_green;
		else obj_yn_select_box.image_blend = c_red;
		
		if (mouse_check_button_pressed(mb_left)){
			if (is_yes){
				room_persistent = false;
				reset_data();
			}
			else {
				obj_menu_windows.open = false;
			};
		};
	}
	
	else if !(position_meeting(mouse_x, mouse_y, obj_yn)) || !(obj_menu_windows.open) obj_yn_select_box.y = -obj_yn_select_box.sprite_height;
};
	