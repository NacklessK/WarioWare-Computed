if (shook <= shook_goal){
	distance_x = old_x - mouse_x;
	distance_y = old_y - mouse_y;

	direction_x = sign(distance_x);
	direction_y = sign(distance_y);

	var _magnitude = sqr(distance_x * distance_x + distance_y * distance_y);

	if (direction_x == old_d_x) && (direction_y == old_d_y) samey_counter++;
	else samey_counter = 0;

	if (samey_counter < 10) && (_magnitude > 10) && (shake_timer <= 20) shake_timer++; 
	else if (shake_timer > 0) shake_timer -= 2;


	if (shake_timer > 10){
		sprite_index = spr_wario_si_shake;
		shook++;
		if !(voice_played){
			audio_play_sound(snd_wlsi_mine, 10, false);
			voice_played = true;
		}
	}
	else sprite_index = spr_wario_si_carry;
}
else{
	sprite_index = spr_wario_si_idle;
	global.winning = true;
}

old_x = mouse_x;
old_y = mouse_y;

old_d_x = direction_x;
old_d_y = direction_y;