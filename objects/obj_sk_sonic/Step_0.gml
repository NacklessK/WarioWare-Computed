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
	sprite_index = spr_s3_sonic_victory;
	if (image_index > 1) animation_begun = true;
	if (animation_begun) && (image_index < 1) image_index = 1;
}