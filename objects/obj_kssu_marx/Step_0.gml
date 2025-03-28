if (b_timer > 0){
	b_timer -= global.game_spd;
	if (t_timer >= 2) {
		x -= tx_offset;
		y -= ty_offset;
		tx_offset = round(random_range(5, 15)) * rand_sign();
		ty_offset = round(random_range(5, 15)) * rand_sign();
		x += tx_offset;
		y += ty_offset;
		t_timer = 0;
	}
	else {
		t_timer += global.game_spd;
	};
}

else {
	sprite_index = spr_kssu_marx_laser;
	x += 50 * global.game_spd;
	instance_create_layer(x, y, "Laser", obj_kssu_laser, {x: room_width/2, y: y})
};

if (alive) && (place_meeting(x, y, obj_kssu_hammer)){
	flash(5, 0.2);
	y = -sprite_height;
	global.winning = true;
};