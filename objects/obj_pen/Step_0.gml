audio_play_sound(snd_pen, 11, false);

x = mouse_x;
y = mouse_y;

if (alpha >= 0.2){
	if !(jingle_played){
		audio_play_sound(snd_win_jingle3, 10, false);
		jingle_played = true;
	}
	global.winning = true;
}

array_push(x_lst, x);
array_push(y_lst, y);

if (array_length(x_lst) >= 2){
	var d_x = abs(array_last(x_lst) - x_lst[array_length(x_lst) - 2]);
	var d_y = abs(array_last(y_lst) - y_lst[array_length(y_lst) - 2]);
	distance =  sqrt(power(d_x, 2) + power(d_y, 2))
	alpha += distance / 50000;
	show_debug_message(alpha);
}

if (place_meeting(x, y, obj_paper_sheet)) && (distance > 10) audio_resume_sound(snd_pen);
else audio_pause_sound(snd_pen);




