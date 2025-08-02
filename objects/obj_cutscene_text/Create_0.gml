time = global.txt[idx].duration

function display_text(index){
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	
	if (index != -1){
		
		var line = global.txt[index];
		
		draw_set_color(line.clr);
		var offset = line.y_offset;
		draw_set_font(line.font);
		
		if (time > line.duration - line.fade) draw_set_alpha(abs(time - line.duration) / line.fade);
		if (time < line.fade) draw_set_alpha(time / line.fade);
		if (line.fade == 0) draw_set_alpha(1);
	
		if (string_pos("\n", line.str) != 0) offset += 5;
		draw_text_transformed(x, y + offset, line.str,  line.scale,  line.scale, 0);
		time--;
		
		if (time <= 0){
			if (idx + 1 < array_length(global.txt)) && (idx != -1){
				time = line.duration;
				idx++;
				time = global.txt[idx].duration
			}
			else idx = -1;
		};
	}
	else draw_text(0, 0, "");
};

if (room == rm_intro_0){
	cursor_sprite = spr_empty;
	window_set_cursor(cr_none);
	audio_stop_all();
	if !(audio_is_playing(snd_mmx2_intro)) audio_play_sound(snd_mmx2_intro, 10, false);
}

else if (room == rm_intro_2){
	audio_stop_all();
	if !(audio_is_playing(snd_toy_block_tower)) audio_play_sound(snd_toy_block_tower, 10, false);
}

else if (room == rm_intro_4){
	cursor_sprite = spr_mouse;
}

else if (room == rm_intro_5){
	cursor_sprite = spr_empty;
}

else if (room == rm_intro_6){
	audio_stop_all();
	if !(audio_is_playing(snd_sa1_intro)) audio_play_sound(snd_sa1_intro, 10, false);
}

else if (room == rm_intro_7){
	audio_stop_all();
	if !(audio_is_playing(snd_crygor_theme)) audio_play_sound(snd_crygor_theme, 10, false);
}


else if (room == rm_intro_9){
	audio_stop_all();
	if !(audio_is_playing(snd_warioware_intro)) audio_play_sound(snd_warioware_intro, 10, false);
}