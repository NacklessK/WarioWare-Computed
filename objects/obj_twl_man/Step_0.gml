percent = ((time_limit - get_timer()) / time_limit) * 100;
if obj_twl_input_box.input != "" input = real(obj_twl_input_box.input);


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
		};
};

if (is_correct){
	if !(jingle_played){
		audio_play_sound(snd_correct, 10, false);
		jingle_played = true;
	};
	confetti += global.game_spd;
		if (confetti > 5){
			instance_create_layer(random_range(0, room_width), -50, "Confetti", obj_confetti);
			confetti = 0;
		};
};