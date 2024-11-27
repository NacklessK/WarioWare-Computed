if (mouse_check_button(mb_left)) && (position_meeting(mouse_x, mouse_y, self)){
	if !(clicked) audio_play_sound(snd_click, 10, false);
	clicked = true;
}

if (clicked){

	if (scale > 0.2) scale *= (0.7 / global.game_spd);
	else instance_destroy()

	image_xscale = scale;
	image_yscale = scale;
}