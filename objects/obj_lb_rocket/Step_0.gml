if !(audio_is_playing(snd_boss_start)){
	if (countdown_f) && (free){
		layer_vspeed("Stars", 10 * global.game_spd);
		image_index = 1;
		if (y > room_height / 2) y -= step;
		else {
			image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
			shoot();
		}
		
	}
	else if !(countdown_played){
		audio_play_sound(snd_countdown, 10, false);
		countdown_played = true;
	}
	else if (countdown_played) && !(music_started)
	{
		audio_play_sound(snd_spaceboss, 10, true);
		music_started = true;
	}
	
	if !(audio_is_playing(snd_countdown)) countdown_f = true;
}

if (instance_number(obj_lb_asteroid) > 0) && !(dead){
	audio_stop_sound(snd_spaceboss);
	if (free) audio_play_sound(snd_boss_win, 10, false);
	free = false;
	image_angle += -image_angle * 0.2 * global.game_spd;
	
	if (image_angle == 0){
		y -= 10 * global.game_spd;
		if (y < -sprite_height){
			instance_destroy();
			global.winning = true;
			global.one_up = true;
			room_goto(rm_demo_stage);
		}
	}
}

if (place_meeting(x, y, obj_lb_asteroid)){
	audio_play_sound(snd_sonic_death, 10, false);
	dead = true;
	free = false;
	layer_set_visible("Black", true);
}

if (dead){
	audio_stop_sound(snd_spaceboss); 
	if (timer > 0) && (image_alpha > 0) timer -= global.game_spd;
	else if (image_alpha > 0) image_alpha -= global.game_spd * 0.1;
	else if (image_alpha <= 0){
	if (timer < 30) timer += global.game_spd;
	else room_goto(rm_demo_stage);
	}
}