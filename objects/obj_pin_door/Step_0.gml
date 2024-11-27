if (actual_pin == keyboard_string){
	if (image_index == 0) audio_play_sound(snd_win_jingle3, 10, false);
	image_index = 1;
	global.winning = true;
}