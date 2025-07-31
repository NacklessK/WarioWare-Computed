if (image_alpha < 0.5){
	image_alpha += (0.5 - image_alpha) * 0.05;
	show_debug_message(image_alpha)
};