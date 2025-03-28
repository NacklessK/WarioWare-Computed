if (timer > 0) timer -= global.game_spd;
else{
	if !(bombed){
		instance_create_layer(x, y, "BombP", obj_kssu_bomb, {image_xscale: 4, image_yscale: 4});
		bombed = true;
	};
};

if (alive) && (place_meeting(x, y, obj_kssu_hammer)){
	alive = false;
	global.winning = true;
	sprite_index = spr_kssu_poppy_hurt;
	audio_play_sound(snd_kssu_hit, 10, false);
	speed = 0;
}

else if (x_step >= 15){
	sprite_index = spr_kssu_defeat;
	if (floor(image_index) == 4){
		image_speed = 0;
		instance_destroy();
	}
};

if !(alive) x_step++;