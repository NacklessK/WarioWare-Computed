if (place_meeting(x, y, obj_karate_man)){
	if !(touched){
		hit_counter++;
		touched = true;
	}
}
else touched = false;

if (hit_counter > 10){
	beaten = true;
	global.winning = true;
	speed = 30 * global.game_spd;
	image_angle += 20 * global.game_spd;
	y_vel += global.game_spd;
}

y += y_vel;