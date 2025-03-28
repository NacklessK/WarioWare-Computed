if (instance_exists(obj_menu_windows)) {
    image_xscale = obj_menu_windows.scale / 4;
	image_yscale = obj_menu_windows.scale / 4;
	x = room_width / 2 + ((target_x - room_width / 2) * (image_xscale));
	y = room_height / 2 + ((target_y - room_height / 2) * (image_xscale));
};

if !(array_contains(pres, global.presentation)){
	sprite_index = spr_empty;
	image_alpha = 0;	
}

else {
	sprite_index = spr_yn;
	image_index = is_yes;
	
	if (image_alpha < 1) image_alpha += 0.1;
	
	if (position_meeting(mouse_x, mouse_y, self)) && (obj_menu_windows.open){
		obj_yn_select_box.x = x;
		obj_yn_select_box.y = y;
		if (is_yes) obj_yn_select_box.image_blend = c_green;
		else obj_yn_select_box.image_blend = c_red;
		
		if (mouse_check_button_pressed(mb_left)){
			if (is_yes){
				switch global.presentation{
					case "data":
						room_persistent = false;
						reset_data();
						break;
					
					case "shutdown":
						game_end();
						break;
				};
			}
			else {
				obj_menu_windows.open = false;
			};
		};
	}
	
	else if !(position_meeting(mouse_x, mouse_y, obj_yn)) || !(obj_menu_windows.open){
		obj_yn_select_box.y = -obj_yn_select_box.sprite_height;
	};
};
	