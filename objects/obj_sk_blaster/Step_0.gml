if (audio_is_playing(snd_sk_charge)){
	if (place_meeting(x + speed, y, obj_sk_barriere)){
		while !(place_meeting(x + 1 * sign(speed), y, obj_sk_barriere)) && (abs(hsp) > 0.5){
			hsp *= 0.5;
			hsp = speed;
			x += hsp;
		}
		 speed *= -1;
	}

	frame_speed += 0.01 * global.game_spd;
	image_speed += frame_speed * (0.01 * global.game_spd);
}

else if !(stop){
	speed = 0;
	image_speed = 0;
	image_index = 1;
	audio_play_sound(snd_sk_beam, 10, false);
	instance_create_layer(x, y, "Beam", obj_sk_beam, {image_xscale: 3, image_yscale: 3})
	stop = true;
}

if (keyboard_check(vk_space)) audio_stop_sound(snd_sk_charge);