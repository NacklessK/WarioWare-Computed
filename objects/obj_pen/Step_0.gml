if (alpha >= 0.5){
	if !(jingle_played){
		audio_play_sound(snd_correct, 11, false);
		jingle_played = true;
		is_won = true;
	}
	global.winning = true;
}

if (is_won){
	x += (1100 - x) * 0.2 * global.game_spd;
	y += (570 - y) * 0.2 * global.game_spd;
	image_angle += (47.5 - image_angle) * 0.2 * global.game_spd;
	audio_stop_sound(snd_pen);
}
else {
	audio_play_sound(snd_pen, 10, false);
	x = mouse_x;
	y = mouse_y;
	array_push(x_lst, x);
	array_push(y_lst, y);
};

if (array_length(x_lst) >= 2){
	var d_x = abs(array_last(x_lst) - x_lst[array_length(x_lst) - 2]);
	var d_y = abs(array_last(y_lst) - y_lst[array_length(y_lst) - 2]);
	distance =  sqrt(power(d_x, 2) + power(d_y, 2))
	alpha += distance / (15000 + 5000 * global.level);
};

if (place_meeting(x, y, obj_paper_sheet)) && (distance > 10) audio_resume_sound(snd_pen);
else audio_pause_sound(snd_pen);

if (global.mio_end){
	audio_stop_sound(snd_pen);
};



