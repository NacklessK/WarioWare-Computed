if (abs(target_y - y) > 3)y += (target_y - y) * 0.2;

if (instance_position(mouse_x, mouse_y, self)) && (global.presentation == "main"){
	obj_main_select_box.x = x;
	obj_main_select_box.y = y;
	obj_main_select_box.image_xscale = image_xscale;
	obj_main_select_box.image_yscale = image_yscale;
	
	if (entry == 3) obj_main_select_box.image_index = 1;
	else obj_main_select_box.image_index = 0;
	
	if (mouse_check_button_pressed(mb_left)){
		if (instance_number(obj_menu_windows) == 0) instance_create_layer(room_width / 2, room_height / 2, "Window", obj_menu_windows, {entry: entry})
	};
}

else if !(position_meeting(mouse_x, mouse_y, obj_menu_icons)) obj_main_select_box.y = -sprite_height;