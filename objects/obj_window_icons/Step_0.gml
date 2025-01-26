if !(effect) {
    if (instance_number(obj_menu_windows) > 0) {
	if (obj_menu_windows.closed){
		y = -1000;
		save_game();
		image_xscale = og_scale;
		image_yscale = image_xscale;
		sprite_index = default_sprite;
		image_index = entry;
		clicked = false;
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
		instance_create_layer(x, y, "WinIconFX", obj_window_icons, {image_xscale: image_xscale, image_yscale: image_yscale, entry: entry, effect: true, menu: menu});
		clicked = true;
	};
}

else if !(position_meeting(mouse_x, mouse_y, obj_window_icons)) obj_window_select_box.y = -5000;
}

else {
	image_xscale += 0.8;
	image_yscale = image_xscale;
	image_alpha -= 0.1;
	if (image_alpha <= 0){
		switch entry{
			case 0:
				if (menu == 0) fade_out(rm_demo_stage, .5);
				if (menu == 1){
					obj_window_icons.sprite_index = spr_empty;
					instance_destroy();
					global.presentation = "graphics";
				};
				
				break;
			case 1: 
				if (menu == 0){
					instance_create_layer(room_width / 2, room_height / 2, "Indexplorer", obj_indexplorer);
					instance_destroy();
				};
				if (menu == 1){
					obj_window_icons.sprite_index = spr_empty;
					instance_destroy();
					global.presentation = "data";
				};
				break;
		};
	};
};