if (instance_number(obj_menu_windows) > 0) {
	if (obj_menu_windows.closed){
		y = -sprite_height * 10;
		image_xscale = og_scale;
		image_yscale = image_xscale;   
	}
    else if (obj_menu_windows.entry == menu){
		image_xscale = obj_menu_windows.scale / 1.5;
		image_yscale = obj_menu_windows.scale / 1.5;
		x = room_width / 2 + ((target_x - room_width / 2) * (image_xscale / 2));
		y = room_height / 2 + ((target_y - room_height / 2) * (image_xscale / 2));
	};
};


if (instance_position(mouse_x, mouse_y, self)) && (image_xscale > 2.66){
	obj_window_select_box.x = x;
	obj_window_select_box.y = y;
}

else if !(position_meeting(mouse_x, mouse_y, obj_game_icons)) obj_window_select_box.y = -5000;