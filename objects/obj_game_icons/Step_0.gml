if !(effect) {
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
	if (mouse_check_button_pressed(mb_left)) && !(clicked){
		instance_create_layer(x, y, "WinIconFX", obj_game_icons, {image_xscale: image_xscale, image_yscale: image_yscale, image_index: entry + 2, effect: true});
		clicked = true;
	};
}

else if !(position_meeting(mouse_x, mouse_y, obj_game_icons)) obj_window_select_box.y = -5000;
}

else {
	image_xscale += 0.8;
	image_yscale = image_xscale;
	image_alpha -= 0.1;
	if (image_alpha <= 0){
		switch image_index - 2{
			case 0:
				fade_out(rm_demo_stage, .5);
				break;
			case 1: 
				instance_create_layer(room_width / 2, room_height / 2, "Indexplorer", obj_indexplorer);
				break;
		};
	};
};