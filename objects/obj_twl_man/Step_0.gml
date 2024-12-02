timer = get_timer() - c_time;
percent = ((time_limit - timer) / time_limit) * 100;
if (obj_twl_input_box.input != "") input = real(obj_twl_input_box.input);


if (percent <= 0){
	image_index = (string_length(obj_twl_input_box.input) > 0) + 1;
};


if (abs(percent) < 1){

	switch screen.question_index{
		case 0:
			if (input == current_year) is_correct = true;
		case 1:
			if (input == screen.a + screen.b) is_correct = true;
		case 2:
			if (input == string_length(screen.word)) is_correct = true;
		case 3:
			if (input == current_day) is_correct = true;
		case 4:
			if (input == 8) is_correct = true;
		case 5:
			if (input == screen.a * screen.b) is_correct = true;
		case 6:
			if (input == current_hour) is_correct = true;
		case 7:
			if (input == global.score) is_correct = true;
		case 8:
			if (input == screen.a * screen.b + screen.c) is_correct = true;
		};
};

if (percent < -15) {
    if (is_correct){
		global.winning = true;
	if !(jingle_played){
		audio_play_sound(snd_correct, 10, false);
		audio_play_sound(snd_applause, 11, false);
		jingle_played = true;
	};
	confetti += global.game_spd;
		if (confetti > 5){
			instance_create_layer(random_range(0, room_width), -50, "Confetti", obj_confetti);
			confetti = 0;
		};
	}

	else{
		if !(jingle_played){
			audio_play_sound(snd_wrong, 10, false);
			audio_play_sound(snd_booing, 11, false);
			jingle_played = true;
		};
		instance_destroy(obj_twl_spotlight);
		image_index = 3;
	};
}