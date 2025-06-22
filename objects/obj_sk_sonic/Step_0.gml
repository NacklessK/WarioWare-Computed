if (place_meeting(x, y, obj_sk_beam)) && !(dead){
	sprite_index = spr_s3_sonic_die;
	y_vel = -20;
	dead = true;
}

else if (dead){
	y_vel += 1 *global.game_spd;
}

y += y_vel;

if (global.losing){
	layer_set_visible("Shake", true);
	sprite_index = spr_s3_sonic_victory;
	if (image_index > 1) animation_begun = true;
	if (animation_begun) && (image_index < 1) image_index = 1;
}

if (global.level == 2){
	if !(dead) && !(global.losing) {
		sprite_index = spr_s3_sonic_run;
		x += 10  * x_dir * global.game_spd;
	};
	image_xscale = x_dir * abs(image_xscale);
	if (collide_cooldown >= 5){
		if (place_meeting(x, y, obj_sk_barriere)){
			x_dir *= -1;
			collide_cooldown = 0
		};
	}
	else{
		collide_cooldown += 1 * global.game_spd;
	};
}