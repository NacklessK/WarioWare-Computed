if (image_angle > -15) && (image_angle < 15) sprite_index = spr_trippin_safe;
else sprite_index = spr_trippin_trip;

if !(place_meeting(x, y, obj_trippin_floor)) && !(fell){
	x -= 4 * global.game_spd;
	y += 3 * global.game_spd;
	image_angle = point_direction(x, y, mouse_x, mouse_y) - m_offset;
}

else{
	fell = true;
	if (sprite_index == spr_trippin_safe){
		if !(global.winning) audio_play_sound(snd_win_jingle4, 10, false);
			global.winning = true;
	}
	else if (sprite_index == spr_trippin_trip){
		if (timer >= 2) {
		    x -= tx_offset;
			y -= ty_offset;
			tx_offset = round(random_range(5, 15)) * rand_sign();
			ty_offset = round(random_range(5, 15)) * rand_sign();
			x += tx_offset;
			y += ty_offset;
			timer = 0;
		}
		else {
		    timer += global.game_spd;
		}
	};
};
