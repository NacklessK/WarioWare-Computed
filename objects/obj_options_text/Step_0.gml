if (global.presentation == "graphics"){
	image_xscale = obj_menu_windows.scale / 2;
	image_yscale = obj_menu_windows.scale / 2;
	x = room_width / 2 + ((target_x - room_width / 2) * (image_xscale / 2));
	y = room_height / 2 + ((target_y - room_height / 2) * (image_xscale / 2));
}

else y = -sprite_height * 2;