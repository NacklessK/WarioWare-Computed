if (is_opening){
	
	image_xscale += ((1366 / 260) - image_xscale) * 0.2;
	image_yscale += ((768 / 160) - image_yscale) * 0.2;

	if (abs(1366 / 260 - image_xscale) < 0.05){
		is_opening = global.presentation == "main";
		if (is_opening) room_goto(rm_index_menu)
	};
}


else{
	image_xscale *= 0.7;
	image_yscale = image_xscale;
	global.presentation = "main";
	if (image_xscale < 0.02){
		instance_destroy();
	};
};

