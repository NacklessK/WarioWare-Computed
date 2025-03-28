if (obj_kssu_kirby.die_timer == 0){
	if (alive) && (place_meeting(x, y, obj_kssu_hammer)){
	alive = false;
	global.winning = true;
	sprite_index = spr_kssu_wdee_hurt;
	audio_play_sound(snd_kssu_hit, 10, false);
	speed = 0;
}

if (x_step < 10) && !(alive){
	x += 10;
}

else if (x_step >= 15){
	sprite_index = spr_kssu_defeat;
	if (floor(image_index) == 4){
		image_speed = 0;
		instance_destroy();
	}
}

if !(alive) x_step++;
}

else{
	image_speed = 0;
	speed = 0;
};