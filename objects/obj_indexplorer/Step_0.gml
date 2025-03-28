if (is_opening){
	image_xscale += ((1366 / 260) - image_xscale) * 0.2;
	image_yscale += ((768 / 160) - image_yscale) * 0.2;

	if (abs(1366 / 260 - image_xscale) < 0.05){
		is_opening = global.presentation == "game";
		if (is_opening) room_goto(rm_index_menu)
	};
}


else{
	image_xscale *= 0.7;
	image_yscale = image_xscale;
	if !(instance_exists(obj_menu_windows)) global.presentation = "main";
	else global.presentation = "game";
	if (image_xscale < 0.02){
		obj_window_icons.clicked = false;
		instance_destroy();
	};
};

