c_letter = string_char_at(global.command_font_map, floor(image_index)+1);

if !(global.losing){
	if (panel.flipped){
	
		// Fade out the question mark
		if (c_letter == panel.letter){
			if (image_alpha > 0.02){
				image_alpha -= image_alpha * 0.2 * global.game_spd;
			}
		if (image_alpha < 0.02) image_alpha = 0;
		}
	
		// Set image to actual letter
		if (image_alpha == 0){
			image_index = get_index_string(global.command_font_map, panel.real_letter)
		}
	
		// Fade in the real letter
		if (c_letter == panel.real_letter){
			image_alpha += (1 - image_alpha) * 0.2 * global.game_spd;
			if !(count_added) && (image_alpha > 0.8) {
				obj_wu_ship.real_count++;
				count_added = true;
			}
		}
	
	}

	if (global.winning){
		x += ((50 * index) + 600 - x) * 0.07 * global.game_spd;
		y += (520 - y) * 0.07 * global.game_spd;
	}
}

else {
	image_alpha -= image_alpha * 0.2 * global.game_spd;
}