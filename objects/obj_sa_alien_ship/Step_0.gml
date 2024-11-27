if (place_meeting(x, y, obj_sa_bullet)) && !(destroyed){
	audio_play_sound(snd_boss_sonic_hit, 10, false);
	destroyed = true;
	global.winning = true;
	sprite_index = spr_space_explosion;
}

if (destroyed){
	if (image_alpha > 0){
		image_alpha -= 0.05 * global.game_spd;
		image_xscale += 0.1 * global.game_spd;
		image_yscale += 0.1 * global.game_spd;
	}
}

if !(destroyed) x += spd * dir * global.game_spd;

if (global.level > 1){
	if (abs(x  - obj_sa_ship.x) < 20) {
		spd = 10;
		if (cooldown <= 0){
			dir *= -1;
			cooldown = 30;
		};
	}
	else spd = (spd - 3.5) * 0.5 * global.game_spd;
};

if (cooldown > 0){
	cooldown -= global.game_spd;
};