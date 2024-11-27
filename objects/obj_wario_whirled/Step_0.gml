if !(obj_arrow.wheel_touched)image_angle += 5 * global.game_spd;

else if (global.winning){
	sprite_index = spr_wario_whirled_laugh;
	image_speed = global.game_spd;
}

else{
	if (y < room_height + sprite_height / 2) y_vel += 1 * global.game_spd;
	else instance_destroy();
}
 y += y_vel;