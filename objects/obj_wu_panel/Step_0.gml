if (place_meeting(x, y, obj_wu_bullet)) || (global.losing){
	image_speed = global.game_spd;
}

if (image_index > 1){
	animation_began = true;
	flipped = true;
}

if (image_index < 1) && (animation_began) && !(global.losing){
	image_speed = 0;
}

if (obj_wu_ship.real_count == global.level){
	image_alpha -= image_alpha * 0.1 * global.game_spd;
	global.winning = true;
}