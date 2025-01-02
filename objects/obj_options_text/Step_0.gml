if (global.presentation == "graphics"){
	image_xscale = obj_menu_windows.scale / 4;
	image_yscale = obj_menu_windows.scale / 4;
	x = room_width / 2 + ((target_x - room_width / 2) * (image_xscale));
	y = room_height / 2 + ((target_y - room_height / 2) * (image_xscale));
}

else y = -sprite_height * 2;