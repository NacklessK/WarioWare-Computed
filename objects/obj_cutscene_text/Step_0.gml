if (keyboard_check_pressed(vk_space)){
	audio_stop_all()
	audio_play_sound(snd_warioware_intro2, 10, true);
	fade_out(rm_title_screen)
}