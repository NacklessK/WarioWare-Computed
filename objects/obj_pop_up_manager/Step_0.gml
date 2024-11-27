if (instance_number(obj_pop_up) == 0){
	layer_clear_fx("Filter");
	global.winning = true;
	if !(jingle_played) {
	    audio_play_sound(snd_win_jingle3, 10, false);
		jingle_played = true;
	}
}