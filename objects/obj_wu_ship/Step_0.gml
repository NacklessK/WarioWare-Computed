if !(travelling) && (keyboard_check_pressed(vk_anykey)){
	miss_count = 0;
	for (var i = 0; i < global.level; i++;){
		
		if (keyboard_check_pressed(ord(string_char_at(word, global.missing_letters[word_index][i]+1)))) {
			
			for (var j = 0; j < instance_number(obj_wu_panel); j++;){
				
				var panel = instance_find(obj_wu_panel, j);
				
				if (panel.index == global.missing_letters[word_index][i]) && !(panel.selected){
					
					target_x = panel.x;
					chosen_panel = panel;
					shot = false;
				}
			}
		}
		
		else{
			miss_count++;
			
			if (miss_count >= global.level) global.losing = true;
		}
	}
}



if (target_x != -9999) && !(global.losing){
	travelling = true;
	x += (target_x - x) * 0.3 * global.game_spd;
}

if (target_x == round(x)){
	travelling = false;
	if !(shot){
		audio_play_sound(snd_pew, 10, false);
		instance_create_layer(x, y, "Bullet", obj_wu_bullet);
		shot = true;
		chosen_panel.selected = true;
	}
}