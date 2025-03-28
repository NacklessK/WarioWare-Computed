if (obj_kssu_poppy.alive){
	y_vel += global.game_spd / 2.5;
	y += y_vel;
}

else{
	speed = 0;
	sprite_index = spr_kssu_defeat;
	if (floor(image_index) == 4){
		image_speed = 0;
		instance_destroy();
	}
};